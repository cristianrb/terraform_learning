resource "google_sql_database_instance" "mysql-from-tf" {
  name = "mysql-from-tf"
  deletion_protection = false
  region = "us-central1"
  database_version = "MYSQL_5_6"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "myuser" {
  name = "cristian"
  password = "test@@123"
  instance = google_sql_database_instance.mysql-from-tf.name
}