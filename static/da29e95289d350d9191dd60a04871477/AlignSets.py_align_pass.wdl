version 1.0

task AlignSetspyAlignpass {
  input {
    String align_sets_do_tpy
  }
  command <<<
    AlignSets_py align_pass \
      ~{align_sets_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    align_sets_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}