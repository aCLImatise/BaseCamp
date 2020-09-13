version 1.0

task SnpBasedClassifierpy {
  input {
    String? defining_snps
    File? query_snps
    String? outfile
  }
  command <<<
    snp_based_classifier_py \
      ~{if defined(defining_snps) then ("--defining-snps " +  '"' + defining_snps + '"') else ""} \
      ~{if defined(query_snps) then ("--query-snps " +  '"' + query_snps + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    defining_snps: ""
    query_snps: "A fasta file containing the query sequences"
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}