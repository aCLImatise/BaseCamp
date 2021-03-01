version 1.0

task SlimmBuild {
  input {
    Boolean? version_check
    File? output_file
    File? names
    File? nodes
    Int? batch
    Boolean? verbose
    String see
  }
  command <<<
    slimm_build \
      ~{see} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    output_file: "The path to the output file (default slimm_db.sldb) Valid filetype\\nis: .sldb. Default: slimm_db.sldb."
    names: "NCBI's names.dmp file which contains the mapping of taxaid to name"
    nodes: "NCBI's nodes.dmp file which contains the taxonomic tree."
    batch: "maximum number of mapping to load to memory. (default=1000000)\\nDefault: 1000000."
    verbose: "Enable verbose output."
    see: "http://www.seqan.de/projects/slimm  for more information."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}