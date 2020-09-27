version 1.0

task SecaprFindTargetContigs {
  input {
    Int? var_output
    Directory? contigs
    File? reference
    Int? min_coverage
    Int? min_identity
    Boolean? keep_duplicates
    Boolean? keep_paralogs
    Boolean? disable_stats
  }
  command <<<
    secapr find_target_contigs \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if (keep_paralogs) then "--keep-paralogs" else ""} \
      ~{if (disable_stats) then "--disable_stats" else ""}
  >>>
  parameter_meta {
    var_output: "[--min-coverage MIN_COVERAGE]\\n[--min-identity MIN_IDENTITY]\\n[--keep-duplicates] [--keep-paralogs]\\n[--disable_stats]"
    contigs: "The directory containing the assembled contigs in\\nfasta format."
    reference: "The fasta-file containign the reference sequences\\n(probe-order-file)."
    min_coverage: "The minimum percent coverage required for a match\\n[default=80]."
    min_identity: "The minimum percent identity required for a match\\n[default=80]."
    keep_duplicates: "Use this flag in case you want to keep those contigs\\nthat span across multiple exons."
    keep_paralogs: "Use this flag in case you want to keep loci with signs\\nof paralogy (multiple contig matches). One randomely\\nselected contig will be selected for these loci."
    disable_stats: "Use this flag if you want to disable generation of\\nstats (can be necessary because previous stats files\\ncan't be found if files are used that were not\\npreviously processed with SECAPR)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}