version 1.0

task Dnadiff {
  input {
    File? delta_provide_precomputed
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
      ~{if (delta_provide_precomputed) then "-d" else ""}
  >>>
  parameter_meta {
    delta_provide_precomputed: "|delta        Provide precomputed delta file for analysis\\n-h\\n--help          Display help information and exit\\n-p|prefix       Set the prefix of the output files (default \\\"out\\\")\\n-V\\n--version       Display the version information and exit\\n"
    dna_diff: "[options]  <reference>  <query>"
    dnadiff_d_delta: "dnadiff  [options]  -d <delta file>"
    reference: "Set the input reference multi-FASTA filename"
    query: "Set the input query multi-FASTA filename"
    delta_file_unfiltered: "delta file      Unfiltered .delta alignment file from nucmer"
  }
  output {
    File out_stdout = stdout()
    File out_delta_provide_precomputed = "${in_delta_provide_precomputed}"
  }
}