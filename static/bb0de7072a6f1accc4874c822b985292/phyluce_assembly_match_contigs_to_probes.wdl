version 1.0

task PhyluceAssemblyMatchContigsToProbes {
  input {
    Directory? contigs
    File? probes
    Directory? directory_store_sqldatabase
    String? verbosity
    File? log_path
    Int? min_coverage
    Int? min_identity
    File? dupe_file
    String? regex
    File? keep_duplicates
    String var_10
  }
  command <<<
    phyluce_assembly_match_contigs_to_probes \
      ~{var_10} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if defined(directory_store_sqldatabase) then ("--output " +  '"' + directory_store_sqldatabase + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(keep_duplicates) then ("--keep-duplicates " +  '"' + keep_duplicates + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contigs: "The directory containing the assembled contigs in\\nwhich you are searching for UCE loci."
    probes: "The bait/probe file in FASTA format."
    directory_store_sqldatabase: "The directory in which to store the resulting SQL\\ndatabase and LASTZ files."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    min_coverage: "The minimum percent coverage required for a match\\n[default=80]."
    min_identity: "The minimum percent identity required for a match\\n[default=80]."
    dupe_file: "Path to self-to-self lastz results for baits to remove\\npotential duplicate probes."
    regex: "A regular expression to apply to the probe names for\\nreplacement [default='^(uce-\\d+)(?:_p\\d+.*)']."
    keep_duplicates: "A optional output file in which to store those loci\\nthat appear to be duplicates.\\n"
    var_10: "[--verbosity {INFO,WARN,CRITICAL}]"
  }
  output {
    File out_stdout = stdout()
    File out_keep_duplicates = "${in_keep_duplicates}"
  }
}