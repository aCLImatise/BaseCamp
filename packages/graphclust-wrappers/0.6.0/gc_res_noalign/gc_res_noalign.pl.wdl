version 1.0

task GcResNoalignpl {
  command <<<
    gc_res_noalign_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}