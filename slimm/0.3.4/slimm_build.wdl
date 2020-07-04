version 1.0

task SlimmBuild {
  input {
    Boolean? version_check
    String? output_file
    String? names
    String? nodes
    Int? batch
    Boolean? verbose
  }
  command <<<
    slimm_build \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    output_file: "The path to the output file (default slimm_db.sldb) Valid filetype is: .sldb. Default: slimm_db.sldb."
    names: "NCBI's names.dmp file which contains the mapping of taxaid to name"
    nodes: "NCBI's nodes.dmp file which contains the taxonomic tree."
    batch: "maximum number of mapping to load to memory. (default=1000000) Default: 1000000."
    verbose: "Enable verbose output."
  }
}