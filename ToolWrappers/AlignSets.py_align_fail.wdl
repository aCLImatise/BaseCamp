version 1.0

task AlignSetspyAlignfail {
  input {
    String align_sets_do_tpy
  }
  command <<<
    AlignSets_py align_fail \
      ~{align_sets_do_tpy}
  >>>
  parameter_meta {
    align_sets_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}