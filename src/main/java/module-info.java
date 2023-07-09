module com.hammond320.inventorysystemmanagement {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.hammond320.inventorysystemmanagement to javafx.fxml;
    exports com.hammond320.inventorysystemmanagement;
}