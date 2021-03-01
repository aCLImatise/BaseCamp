version 1.0

task TripailleJobAddImportJob {
  input {
    String name
    String importer
    String input_file
  }
  command <<<
    tripaille job add_import_job \
      ~{name} \
      ~{importer} \
      ~{input_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: ""
    importer: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}