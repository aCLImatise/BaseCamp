version 1.0

task Psi2sam {
  input {
    String? option
    String run_name
  }
  command <<<
    psi2sam \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}