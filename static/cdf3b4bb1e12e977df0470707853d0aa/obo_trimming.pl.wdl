version 1.0

task OboTrimmingpl {
  command <<<
    obo_trimming_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}