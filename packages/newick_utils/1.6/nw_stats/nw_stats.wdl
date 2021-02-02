version 1.0

task NwStats {
  input {
    Boolean? fhh
  }
  command <<<
    nw_stats \
      ~{if (fhh) then "-fHh" else ""}
  >>>
  parameter_meta {
    fhh: ""
  }
  output {
    File out_stdout = stdout()
  }
}