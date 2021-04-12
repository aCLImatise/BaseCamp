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
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3"
  }
  parameter_meta {
    rbt: ""
  }
  output {
    File out_stdout = stdout()
  }
}