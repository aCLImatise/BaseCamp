version 1.0

task SnpBasedClassifierpy {
  input {
    String? q
    String? snps
  }
  command <<<
    snp_based_classifier_py \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(snps) then ("-snps " +  '"' + snps + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    snps: ""
  }
  output {
    File out_stdout = stdout()
  }
}