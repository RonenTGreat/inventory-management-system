package com.hammond320.inventorysystemmanagement;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Optional;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.AreaChart;
import javafx.scene.chart.BarChart;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import de.jensd.fx.glyphs.fontawesome.FontAwesomeIcon;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

public class dashboardController implements Initializable {
    @FXML
    private Button addProduct_btn;

    @FXML
    private Button addProducts_addBtn;

    @FXML
    private TextField addProducts_brand;

    @FXML
    private TableColumn<?, ?> addProducts_col_brand;

    @FXML
    private TableColumn<?, ?> addProducts_col_price;

    @FXML
    private TableColumn<?, ?> addProducts_col_productName;

    @FXML
    private TableColumn<?, ?> addProducts_col_productid;

    @FXML
    private TableColumn<?, ?> addProducts_col_status;

    @FXML
    private TableColumn<?, ?> addProducts_col_type;

    @FXML
    private Button addProducts_deleteBtn;

    @FXML
    private AnchorPane addProducts_form;

    @FXML
    private ImageView addProducts_imageView;

    @FXML
    private Button addProducts_importBtn;

    @FXML
    private TextField addProducts_price;

    @FXML
    private TextField addProducts_productName;

    @FXML
    private ComboBox<?> addProducts_productType;

    @FXML
    private TextField addProducts_productid;

    @FXML
    private Button addProducts_resetBtn;

    @FXML
    private TextField addProducts_search;

    @FXML
    private ComboBox<?> addProducts_status;

    @FXML
    private TableView<?> addProducts_tableView;

    @FXML
    private Button addProducts_updateBtn;

    @FXML
    private Label home_availableProducts;

    @FXML
    private Button home_btn;

    @FXML
    private AnchorPane home_form;

    @FXML
    private AreaChart<?, ?> home_incomeChart;

    @FXML
    private Label home_numberOrder;

    @FXML
    private BarChart<?, ?> home_orderChart;

    @FXML
    private Label home_totalIcome;

    @FXML
    private FontAwesomeIcon logout;

    @FXML
    private AnchorPane main_form;

    @FXML
    private TextField orders_amount;

    @FXML
    private Label orders_balance;

    @FXML
    private ComboBox<?> orders_brand;

    @FXML
    private Button orders_btn;

    @FXML
    private TableColumn<?, ?> orders_col_brand;

    @FXML
    private TableColumn<?, ?> orders_col_brandName;

    @FXML
    private TableColumn<?, ?> orders_col_price;

    @FXML
    private TableColumn<?, ?> orders_col_quantity;

    @FXML
    private TableColumn<?, ?> orders_col_type;

    @FXML
    private AnchorPane orders_form;

    @FXML
    private Button orders_payBtn;

    @FXML
    private ComboBox<?> orders_productName;

    @FXML
    private ComboBox<?> orders_productType;

    @FXML
    private Spinner<?> orders_quantity;

    @FXML
    private Button orders_receiptBtn;

    @FXML
    private Button orders_resetBtn;

    @FXML
    private TableView<?> orders_tableView;

    @FXML
    private Label orders_total;

    @FXML
    private Label username;

    @FXML
    private Button orders_addBtn;

    private Connection connect;
    private PreparedStatement prepare;
    private Statement statement;
    private ResultSet result;


    public ObservableList<productData> addProductsListData(){
        ObservableList<productData> productList = FXCollections.observableArrayList();
        String sql = "SELECT * FROM product";
        connect = database.connectionDb();
        try{
            prepare = connect.prepareStatement(sql);
            result = prepare.executeQuery();
            productData prodD;

            while (result.next()){
                prodD = new productData(result.getInt("product_id"));
                // Continue HERE!!!!
            }

        }catch (Exception e){e.printStackTrace();}
    }

    public void switchForm(ActionEvent event){
        if(event.getSource() == home_btn){
            home_form.setVisible(true);
            addProducts_form.setVisible(false);
            orders_form.setVisible(false);

            home_btn.setStyle("-fx-background-color: linear-gradient(to right, #fa793c, #cc4c0c);");
            addProduct_btn.setStyle("-fx-background-color: transparent");
            orders_btn.setStyle("-fx-background-color: transparent");
        } else if (event.getSource() == addProduct_btn) {
            home_form.setVisible(false);
            addProducts_form.setVisible(true);
            orders_form.setVisible(false);

            home_btn.setStyle("-fx-background-color: transparent");
            addProduct_btn.setStyle("-fx-background-color: linear-gradient(to right, #fa793c, #cc4c0c);");
            orders_btn.setStyle("-fx-background-color: transparent");

        }else if (event.getSource() == orders_btn) {
            home_form.setVisible(false);
            addProducts_form.setVisible(false);
            orders_form.setVisible(true);

            home_btn.setStyle("-fx-background-color: transparent");
            addProduct_btn.setStyle("-fx-background-color: transparent");
            orders_btn.setStyle("-fx-background-color: linear-gradient(to right, #fa793c, #cc4c0c);");

        }


    }
    
    private  double x = 0;
    private double y = 0;
    
    public void logoout(){
        try{
            Alert alert = new Alert (Alert.AlertType.CONFIRMATION);
            alert.setTitle("Conformation Message");
            alert.setHeaderText(null);
            alert.setContentText("Are you sure you want to logout?");
            Optional<ButtonType> option = alert.showAndWait();
            
            if(option.get().equals(ButtonType.OK)){
                logout.getScene().getWindow().hide();

                Parent root = FXMLLoader.load(getClass().getResource("hello-view.fxml"));
                Stage stage = new Stage();
                Scene scene = new Scene(root);
                
                root.setOnMousePressed((MouseEvent event) ->{
                    x = event.getSceneX();
                    y = event.getSceneY();
                });

                root.setOnMouseDragged((MouseEvent event) -> {
                    stage.setX(event.getSceneX() - x);
                    stage.setY(event.getSceneY() - y);

                    stage.setOpacity(0.8);
                });

                root.setOnMouseReleased((MouseEvent event) -> {
                    stage.setOpacity(1);
                });

                stage.initStyle(StageStyle.TRANSPARENT);

                stage.setScene(scene);
                stage.show();
                
            }else return;
            
        }catch (Exception e){e.printStackTrace();}
    }

    @Override
    public void initialize(URL location, ResourceBundle resources){


    }
}
