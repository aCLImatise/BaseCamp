version 1.0

task PredictNumReads {
  input {
    Int? length_sliding_window
    Int? qual
    Int? threshold_read_counts
    Int? read_length_specify
    File? output_file_name
    String? patientsample_identifier_default
    String? sample_date_default
    String fast_q
  }
  command <<<
    predict_num_reads \
      ~{fast_q} \
      ~{if defined(length_sliding_window) then ("-w " +  '"' + length_sliding_window + '"') else ""} \
      ~{if defined(qual) then ("--qual " +  '"' + qual + '"') else ""} \
      ~{if defined(threshold_read_counts) then ("-c " +  '"' + threshold_read_counts + '"') else ""} \
      ~{if defined(read_length_specify) then ("-l " +  '"' + read_length_specify + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(patientsample_identifier_default) then ("-n " +  '"' + patientsample_identifier_default + '"') else ""} \
      ~{if defined(sample_date_default) then ("-d " +  '"' + sample_date_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length_sliding_window: "Length of the sliding window for emulating read trimming\\n(default: 10)"
    qual: "Quality threshold for emulating read trimming (default:\\n30)"
    threshold_read_counts: "Threshold on the read counts (default: 25000)"
    read_length_specify: "Read length. If not specify estimated for every read\\nindependently (default: None)"
    output_file_name: "Output file name (default: output.tsv)"
    patientsample_identifier_default: "Patient/sample identifier (default: None)"
    sample_date_default: "Sample date (default: None)"
    fast_q: "FASTQ files for forward and reverse reads"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}