version 1.0

task RbtVcfbaf {
  input {
    String rbt
  }
  command <<<
    rbt vcf_baf \
      ~{rbt}
  >>>
  parameter_meta {
    rbt: ""
  }
  output {
    File out_stdout = stdout()
  }
}