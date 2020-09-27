version 1.0

task Runseppsh {
  input {
    Int? make_us_threads
  }
  command <<<
    run_sepp_sh \
      ~{if defined(make_us_threads) then ("-x " +  '"' + make_us_threads + '"') else ""}
  >>>
  parameter_meta {
    make_us_threads: "to make SEPP us 8 threads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}