version 1.0

task JustBlastTestpl {
  command <<<
    just_blast_test_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}