version 1.0

task Modelfromalign {
  input {
    String? option
    String run_name
  }
  command <<<
    modelfromalign \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}