version 1.0

task RefseqMasherContains {
  input {
    String? mash_bin
    File? output_file_path
    Boolean? output_type
    Int? top_n_results
    Float? min_identity
    Float? max_p_value
    Int? parallelism
    String input_dot_dot_dot
  }
  command <<<
    refseq_masher contains \
      ~{input_dot_dot_dot} \
      ~{if defined(mash_bin) then ("--mash-bin " +  '"' + mash_bin + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{true="--output-type" false="" output_type} \
      ~{if defined(top_n_results) then ("--top-n-results " +  '"' + top_n_results + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_p_value) then ("--max-pvalue " +  '"' + max_p_value + '"') else ""} \
      ~{if defined(parallelism) then ("--parallelism " +  '"' + parallelism + '"') else ""}
  >>>
  parameter_meta {
    mash_bin: "Mash binary path (default=\"mash\")"
    output_file_path: "Output file path (default=\"-\"/stdout)"
    output_type: "[tab|csv]      Output file type (tab|csv)"
    top_n_results: "Output top N results sorted by identity in ascending order (default=0/all)"
    min_identity: "Mash screen min identity to report (default=0.9)"
    max_p_value: "Mash screen max p-value to report (default=0.01)"
    parallelism: "Mash screen parallelism; number of threads to spawn (default=1)"
    input_dot_dot_dot: ""
  }
}