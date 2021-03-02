version 1.0

task AlignSetspyOffsetsforward {
  input {
    String align_sets_do_tpy
  }
  command <<<
    AlignSets_py offsets_forward \
      ~{align_sets_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align_sets_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}