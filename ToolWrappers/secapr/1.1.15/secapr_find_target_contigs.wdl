version 1.0

task SecaprFindTargetContigs {
  input {
    Directory? contigs
    File? reference
    Directory? directory_store_targetcontigs
    Int? min_coverage
    Int? min_identity
    Boolean? keep_duplicates
    Boolean? keep_paralogs
    Boolean? disable_stats
  }
  command <<<
    secapr find_target_contigs \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(directory_store_targetcontigs) then ("--output " +  '"' + directory_store_targetcontigs + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if (keep_paralogs) then "--keep-paralogs" else ""} \
      ~{if (disable_stats) then "--disable_stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contigs: "The directory containing the assembled contigs in\\nfasta format."
    reference: "The fasta-file containign the reference sequences\\n(probe-order-file)."
    directory_store_targetcontigs: "The directory in which to store the extracted target\\ncontigs and lastz results."
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