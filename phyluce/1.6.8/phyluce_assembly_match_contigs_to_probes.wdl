version 1.0

task PhyluceAssemblyMatchContigsToProbes {
  input {
    String? probes
    Boolean? regex
    Directory? contigs
    String? verbosity
    File? log_path
    Int? min_coverage
    Int? min_identity
    File? dupe_file
    File? keep_duplicates
    String var_output
  }
  command <<<
    phyluce_assembly_match_contigs_to_probes \
      ~{var_output} \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if (regex) then "--regex" else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""} \
      ~{if defined(keep_duplicates) then ("--keep-duplicates " +  '"' + keep_duplicates + '"') else ""}
  >>>
  parameter_meta {
    probes: ""
    regex: "='^(MyProbe-\\W+)(?:_probe\\d+.*)'"
    contigs: "The directory containing the assembled contigs in\\nwhich you are searching for UCE loci."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    min_coverage: "The minimum percent coverage required for a match\\n[default=80]."
    min_identity: "The minimum percent identity required for a match\\n[default=80]."
    dupe_file: "Path to self-to-self lastz results for baits to remove\\npotential duplicate probes."
    keep_duplicates: "A optional output file in which to store those loci\\nthat appear to be duplicates.\\n"
    var_output: "[--verbosity {INFO,WARN,CRITICAL}]"
  }
  output {
    File out_stdout = stdout()
    File out_keep_duplicates = "${in_keep_duplicates}"
  }
}