version 1.0

task Dnadiff {
  input {
    Boolean? delta_precomputed_file
    Boolean? prefix_set_prefix
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
      ~{if (delta_precomputed_file) then "-d" else ""} \
      ~{if (prefix_set_prefix) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    delta_precomputed_file: "|delta        Provide precomputed delta file for analysis"
    prefix_set_prefix: "|prefix       Set the prefix of the output files (default \\\"out\\\")"
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