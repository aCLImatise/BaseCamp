version 1.0

task Sam2psi {
  input {
    String? option
    String run_name
  }
  command <<<
    sam2psi \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}