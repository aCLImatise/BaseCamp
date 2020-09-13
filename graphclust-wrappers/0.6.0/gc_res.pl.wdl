version 1.0

task GcRespl {
  command <<<
    gc_res_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}