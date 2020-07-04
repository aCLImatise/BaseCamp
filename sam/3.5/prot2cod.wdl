version 1.0

task Prot2cod {
  input {
    String? option
    String run_name
  }
  command <<<
    prot2cod \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}