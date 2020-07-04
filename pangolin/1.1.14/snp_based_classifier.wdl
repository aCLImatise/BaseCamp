version 1.0

task SnpBasedClassifier.py {
  input {
    String? snps
    String? q
  }
  command <<<
    snp_based_classifier.py \
      ~{if defined(snps) then ("-snps " +  '"' + snps + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    snps: ""
    q: ""
  }
}