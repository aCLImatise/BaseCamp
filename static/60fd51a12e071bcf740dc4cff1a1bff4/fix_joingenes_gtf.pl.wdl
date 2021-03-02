version 1.0

task FixJoingenesGtfpl {
  command <<<
    fix_joingenes_gtf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}