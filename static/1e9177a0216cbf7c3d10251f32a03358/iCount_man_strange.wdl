version 1.0

task ICountManStrange {
  input {
    Boolean? mode
    String i_count
    String man
  }
  command <<<
    iCount man strange \
      ~{i_count} \
      ~{man} \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    mode: ""
    i_count: ""
    man: ""
  }
  output {
    File out_stdout = stdout()
  }
}