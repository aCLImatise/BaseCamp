version 1.0

task SnpBasedClassifierpy {
  input {
    File? defining_snps
  }
  command <<<
    snp_based_classifier_py \
      ~{if defined(defining_snps) then ("--defining-snps " +  '"' + defining_snps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    defining_snps: "A fasta file containing the query sequences"
  }
  output {
    File out_stdout = stdout()
  }
}