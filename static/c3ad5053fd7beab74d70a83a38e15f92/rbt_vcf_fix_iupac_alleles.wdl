version 1.0

task RbtVcffixiupacalleles {
  input {
    String rbt
  }
  command <<<
    rbt vcf_fix_iupac_alleles \
      ~{rbt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rbt: ""
  }
  output {
    File out_stdout = stdout()
  }
}