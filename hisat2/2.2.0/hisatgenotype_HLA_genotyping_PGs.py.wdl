version 1.0

task HisatgenotypeHLAGenotypingPGspy {
  input {
    String? reference_type
    Int? hla_list
    Int? aligner_list
    Int? genome_list
    String? exclude_allele_list
    Int? num_mismatch
    Boolean? verbose
  }
  command <<<
    hisatgenotype_HLA_genotyping_PGs_py \
      ~{if defined(reference_type) then ("--reference-type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(hla_list) then ("--hla-list " +  '"' + hla_list + '"') else ""} \
      ~{if defined(aligner_list) then ("--aligner-list " +  '"' + aligner_list + '"') else ""} \
      ~{if defined(genome_list) then ("--genome-list " +  '"' + genome_list + '"') else ""} \
      ~{if defined(exclude_allele_list) then ("--exclude-allele-list " +  '"' + exclude_allele_list + '"') else ""} \
      ~{if defined(num_mismatch) then ("--num-mismatch " +  '"' + num_mismatch + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    reference_type: "Reference type: gene, chromosome, and genome (default:\\ngene)"
    hla_list: "A comma-separated list of HLA genes (default:\\nA,B,C,DQA1,DQB1,DRB1)"
    aligner_list: "A comma-separated list of aligners (default:\\nhisat2.graph)"
    genome_list: "A comma-separated list of genomes (default: NA12888,NA\\n12889,NA12886,NA12881,NA12880,NA12883,NA12882,NA12885,\\nNA12884,NA12887,NA12877,NA12878,NA12879,NA12892,NA1289\\n3,NA12890,NA12891)"
    exclude_allele_list: "A comma-separated list of allleles to be excluded"
    num_mismatch: "Maximum number of mismatches per read alignment to be\\nconsidered (default: 0)"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}