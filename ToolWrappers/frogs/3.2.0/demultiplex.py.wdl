version 1.0

task Demultiplexpy {
  input {
    Int? mismatches
    String? end
    Boolean? debug
    Int? input_r_one
    Int? input_r_two
    File? input_barcode
    File? output_de_multiplexed
    File? output_excluded
    File? summary
    File? log_file
    Boolean? v
  }
  command <<<
    demultiplex_py \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_r_one) then ("--input-R1 " +  '"' + input_r_one + '"') else ""} \
      ~{if defined(input_r_two) then ("--input-R2 " +  '"' + input_r_two + '"') else ""} \
      ~{if defined(input_barcode) then ("--input-barcode " +  '"' + input_barcode + '"') else ""} \
      ~{if defined(output_de_multiplexed) then ("--output-demultiplexed " +  '"' + output_de_multiplexed + '"') else ""} \
      ~{if defined(output_excluded) then ("--output-excluded " +  '"' + output_excluded + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    mismatches: "Number of mismatches allowed in barcode. [Default: 0]"
    end: "barcode is at the begining of the forward end (bol) or\\nof the reverse (eol) or both (both). [Default: bol]"
    debug: "Keep temporary files to debug program."
    input_r_one: "The R1 sequence file with all samples (format: fastq)."
    input_r_two: "The R2 sequence file with all samples (format: fastq)."
    input_barcode: "This file describes barcodes and samples (one line by\\nsample). Line format : SAMPLE_NAME<TAB>BARCODE or\\nSAMPLE_NAME<TAB>BARCODE_FW<TAB>BARCODE_RV."
    output_de_multiplexed: "The tar file containing R1 files and R2 files for each\\nsample (format: tar). [Default:\\ndemultiplexed_read.tar.gz]"
    output_excluded: "The tar file containing R1 files and R2 files not\\ndemultiplexed (format: tar). [Default:\\nundemultiplexed_read.tar.gz]"
    summary: "TSV file with summary of filters results (format:\\nTSV). [Default: demultiplex_summary.tsv]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}