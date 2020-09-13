version 1.0

task ICountManICountdemultiplexrun {
  input {
    Boolean? mode
    String i_count
    String man
  }
  command <<<
    iCount man iCount_demultiplex_run \
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