version 1.0

task RpprPrepDb {
  input {
    Boolean? reference_package_path
    Boolean? sqlite
    Boolean? help
    String prep_db
  }
  command <<<
    rppr prep_db \
      ~{prep_db} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (sqlite) then "--sqlite" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    sqlite: "Specify the database file to use. Required."
    help: "Display this list of options"
    prep_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}