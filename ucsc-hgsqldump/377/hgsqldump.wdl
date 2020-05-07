version 1.0

task Hgsqldump {
  input {
    String? optionsOptions
    String? databaseDatabase
    String? tablesTables
  }
  command <<<
    hgsqldump \
      ~{optionsOptions} \
      ~{databaseDatabase} \
      ~{tablesTables}
  >>>
}