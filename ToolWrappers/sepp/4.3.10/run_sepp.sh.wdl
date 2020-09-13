version 1.0

task Runseppsh {
  input {
    Int? x
  }
  command <<<
    run_sepp_sh \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""}
  >>>
  parameter_meta {
    x: ""
  }
  output {
    File out_stdout = stdout()
  }
}