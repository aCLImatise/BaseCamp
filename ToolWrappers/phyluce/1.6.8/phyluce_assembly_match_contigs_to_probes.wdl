version 1.0

task PhyluceAssemblyMatchContigsToProbes {
  input {
    Int? probes
    Directory? contigs
    String? verbosity
    File? log_path
    Int? min_coverage
    Int? min_identity
    File? dupe_file
    String? regex
    File? keep_duplicates
  }
  command <<<
    phyluce_assembly_match_contigs_to_probes \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(keep_duplicates) then ("--keep-duplicates " +  '"' + keep_duplicates + '"') else ""}
  >>>
  parameter_meta {
    probes: "OUTPUT\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]\\n[--min-coverage MIN_COVERAGE]\\n[--min-identity MIN_IDENTITY]\\n[--dupefile DUPEFILE]\\n[--regex REGEX]\\n[--keep-duplicates KEEP_DUPLICATES]"
    contigs: "The directory containing the assembled contigs in\\nwhich you are searching for UCE loci."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    min_coverage: "The minimum percent coverage required for a match\\n[default=80]."
    min_identity: "The minimum percent identity required for a match\\n[default=80]."
    dupe_file: "Path to self-to-self lastz results for baits to remove\\npotential duplicate probes."
    regex: "A regular expression to apply to the probe names for\\nreplacement [default='^(uce-\\d+)(?:_p\\d+.*)']."
    keep_duplicates: "A optional output file in which to store those loci\\nthat appear to be duplicates.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_keep_duplicates = "${in_keep_duplicates}"
  }
}