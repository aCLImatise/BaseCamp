version 1.0

task RefseqMasherMatches {
  input {
    File? mash_bin
    File? output_file_path
    File? output_type
    Int? top_n_results
    Int? min_km_er_threshold
    Directory? tmp_dir
    String input_dot_dot_dot
  }
  command <<<
    refseq_masher matches \
      ~{input_dot_dot_dot} \
      ~{if defined(mash_bin) then ("--mash-bin " +  '"' + mash_bin + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if (output_type) then "--output-type" else ""} \
      ~{if defined(top_n_results) then ("--top-n-results " +  '"' + top_n_results + '"') else ""} \
      ~{if defined(min_km_er_threshold) then ("--min-kmer-threshold " +  '"' + min_km_er_threshold + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mash_bin: "Mash binary path (default=\\\"mash\\\")"
    output_file_path: "Output file path (default=\\\"-\\\"/stdout)"
    output_type: "[tab|csv]         Output file type (tab|csv)"
    top_n_results: "Output top N results sorted by distance in\\nascending order (default=5)"
    min_km_er_threshold: "Mash sketch of reads: \\\"Minimum copies of\\neach k-mer required to pass noise filter for\\nreads\\\" (default=8)"
    tmp_dir: "Temporary analysis files path (where to save\\ntemp Mash sketch file) (default=\\\"/tmp\\\")"
    input_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
    File out_output_type = "${in_output_type}"
  }
}