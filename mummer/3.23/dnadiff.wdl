version 1.0

task Dnadiff {
  input {
    Boolean? delta_provide_precomputed
    Boolean? help
    Boolean? prefix_set_prefix
    Boolean? v
    String dna_diff
    String dnadiff_d_delta
    String reference
    String query
    String delta_file_unfiltered
  }
  command <<<
    dnadiff \
      ~{dna_diff} \
      ~{dnadiff_d_delta} \
      ~{reference} \
      ~{query} \
      ~{delta_file_unfiltered} \
      ~{if (delta_provide_precomputed) then "-d" else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (prefix_set_prefix) then "-p" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    delta_provide_precomputed: "|delta        Provide precomputed delta file for analysis"
    help: "Display help information and exit"
    prefix_set_prefix: "|prefix       Set the prefix of the output files (default \\\"out\\\")"
    v: ""
    dna_diff: "[options]  <reference>  <query>"
    dnadiff_d_delta: "dnadiff  [options]  -d <delta file>"
    reference: "Set the input reference multi-FASTA filename"
    query: "Set the input query multi-FASTA filename"
    delta_file_unfiltered: "delta file      Unfiltered .delta alignment file from nucmer"
  }
  output {
    File out_stdout = stdout()
  }
}