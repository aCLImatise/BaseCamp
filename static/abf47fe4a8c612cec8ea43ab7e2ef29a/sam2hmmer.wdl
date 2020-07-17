version 1.0

task Sam2hmmer {
  input {
    String? option
    String run_name
  }
  command <<<
    sam2hmmer \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}