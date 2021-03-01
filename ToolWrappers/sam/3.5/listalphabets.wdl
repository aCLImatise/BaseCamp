version 1.0

task Listalphabets {
  input {
    String? option
    String run_name
  }
  command <<<
    listalphabets \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}