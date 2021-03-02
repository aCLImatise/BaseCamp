version 1.0

task Hisat2ExtractSnpsHaplotypesUCSCpy {
  input {
    String? inter_gap
    String? intra_gap
    Boolean? verbose
    Boolean? test_set
  }
  command <<<
    hisat2_extract_snps_haplotypes_UCSC_py \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (test_set) then "--testset" else ""}
  >>>
  parameter_meta {
    inter_gap: "Maximum distance for variants to be in the same\\nhaplotype"
    intra_gap: "Break a haplotype into several haplotypes"
    verbose: "also print some statistics to stderr"
    test_set: "print test reads"
  }
  output {
    File out_stdout = stdout()
  }
}