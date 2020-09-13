version 1.0

task RefseqMasherContains {
  input {
    File? mash_bin
    File? output_file_path
    File? output_type
    Int? top_n_results
    Float? min_identity
    Float? max_p_value
    Int? parallelism
    String screen
  }
  command <<<
    refseq_masher contains \
      ~{screen} \
      ~{if defined(mash_bin) then ("--mash-bin " +  '"' + mash_bin + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if (output_type) then "--output-type" else ""} \
      ~{if defined(top_n_results) then ("--top-n-results " +  '"' + top_n_results + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_p_value) then ("--max-pvalue " +  '"' + max_p_value + '"') else ""} \
      ~{if defined(parallelism) then ("--parallelism " +  '"' + parallelism + '"') else ""}
  >>>
  parameter_meta {
    mash_bin: "Mash binary path (default=\\\"mash\\\")"
    output_file_path: "Output file path (default=\\\"-\\\"/stdout)"
    output_type: "[tab|csv]      Output file type (tab|csv)"
    top_n_results: "Output top N results sorted by identity in\\nascending order (default=0/all)"
    min_identity: "Mash screen min identity to report\\n(default=0.9)"
    max_p_value: "Mash screen max p-value to report\\n(default=0.01)"
    parallelism: "Mash screen parallelism; number of threads to\\nspawn (default=1)"
    screen: "Input is expected to be one or more FASTA/FASTQ files or one or more"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
    File out_output_type = "${in_output_type}"
  }
}