version 1.0

task TripailleJobAddImportJob {
  input {
    Int? priority
    String name
    String importer
    String input_file
  }
  command <<<
    tripaille job add_import_job \
      ~{name} \
      ~{importer} \
      ~{input_file} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""}
  >>>
  parameter_meta {
    priority: "An integer score to prioritize the job  [default: 10]"
    name: ""
    importer: ""
    input_file: ""
  }
}