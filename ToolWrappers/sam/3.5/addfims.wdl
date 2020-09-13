version 1.0

task Addfims {
  input {
    String? option
    String run_name
  }
  command <<<
    addfims \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}