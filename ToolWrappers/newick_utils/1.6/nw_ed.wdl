version 1.0

task NwEd {
  input {
    Boolean? h_nro
  }
  command <<<
    nw_ed \
      ~{if (h_nro) then "-hnro" else ""}
  >>>
  parameter_meta {
    h_nro: ""
  }
  output {
    File out_stdout = stdout()
  }
}