version 1.0

task AlignSets.pyOffsetsReverse {
  input {
    String align_sets_do_tpy
  }
  command <<<
    AlignSets.py offsets-reverse \
      ~{align_sets_do_tpy}
  >>>
  parameter_meta {
    align_sets_do_tpy: ""
  }
}