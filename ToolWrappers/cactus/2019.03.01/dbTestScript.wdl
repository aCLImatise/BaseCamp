version 1.0

task DbTestScript {
  input {
    Boolean? loglevel
    Boolean? database_conf
    Boolean? first_key
    Boolean? key_number
    Boolean? add_records
    Boolean? set_records
    Boolean? min_record_size
    Boolean? create
  }
  command <<<
    dbTestScript \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (database_conf) then "--databaseConf" else ""} \
      ~{if (first_key) then "--firstKey" else ""} \
      ~{if (key_number) then "--keyNumber" else ""} \
      ~{if (add_records) then "--addRecords" else ""} \
      ~{if (set_records) then "--setRecords" else ""} \
      ~{if (min_record_size) then "--minRecordSize" else ""} \
      ~{if (create) then "--create" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    database_conf: ": The database connection script"
    first_key: ": First key."
    key_number: ": Total number of keys."
    add_records: ": Add records instead of getting them."
    set_records: ": After adding/getting records, set the records."
    min_record_size: ": Min size of record."
    create: ": Make the database."
  }
  output {
    File out_stdout = stdout()
  }
}