version 1.0

task FixJoingenesGtfpl {
  command <<<
    fix_joingenes_gtf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}