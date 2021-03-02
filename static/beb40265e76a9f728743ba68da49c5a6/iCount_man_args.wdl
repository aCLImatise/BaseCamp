version 1.0

task ICountManArgs {
  input {
    Boolean? mode
    String i_count
    String man
  }
  command <<<
    iCount man args \
      ~{i_count} \
      ~{man} \
      ~{if (mode) then "--mode" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: ""
    i_count: ""
    man: ""
  }
  output {
    File out_stdout = stdout()
  }
}