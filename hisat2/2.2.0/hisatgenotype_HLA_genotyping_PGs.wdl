version 1.0

task HisatgenotypeHLAGenotypingPGs.py {
  input {
    String? reference_type
    String? hla_list
    String? aligner_list
    String? genome_list
    String? exclude_allele_list
    String? num_mismatch
    Boolean? verbose
  }
  command <<<
    hisatgenotype_HLA_genotyping_PGs.py \
      ~{if defined(reference_type) then ("--reference-type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(hla_list) then ("--hla-list " +  '"' + hla_list + '"') else ""} \
      ~{if defined(aligner_list) then ("--aligner-list " +  '"' + aligner_list + '"') else ""} \
      ~{if defined(genome_list) then ("--genome-list " +  '"' + genome_list + '"') else ""} \
      ~{if defined(exclude_allele_list) then ("--exclude-allele-list " +  '"' + exclude_allele_list + '"') else ""} \
      ~{if defined(num_mismatch) then ("--num-mismatch " +  '"' + num_mismatch + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    reference_type: "Reference type: gene, chromosome, and genome (default: gene)"
    hla_list: "A comma-separated list of HLA genes (default: A,B,C,DQA1,DQB1,DRB1)"
    aligner_list: "A comma-separated list of aligners (default: hisat2.graph)"
    genome_list: "A comma-separated list of genomes (default: NA12877,NA 12878,NA12879,NA12880,NA12881,NA12882,NA12883,NA12884, NA12885,NA12886,NA12887,NA12888,NA12889,NA12890,NA1289 1,NA12892,NA12893)"
    exclude_allele_list: "A comma-separated list of allleles to be excluded"
    num_mismatch: "Maximum number of mismatches per read alignment to be considered (default: 0)"
    verbose: "also print some statistics to stderr"
  }
}