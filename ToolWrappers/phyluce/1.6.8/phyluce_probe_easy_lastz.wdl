version 1.0

task PhyluceProbeEasyLastz {
  input {
    File? target
    File? query
    File? path_output_file
    String? identity
    String? coverage
    Int? min_match
  }
  command <<<
    phyluce_probe_easy_lastz \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(min_match) then ("--min_match " +  '"' + min_match + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "The path to the target file (2bit/fasta)"
    query: "The path to the query file (2bit/fasta)"
    path_output_file: "The path to the output file"
    identity: "The minimum percent identity to require for a match"
    coverage: "The minimum coverage (%) required for a match"
    min_match: "The minimum number of base pairs required for a match\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}