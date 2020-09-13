version 1.0

task SctoolsDemultiplex {
  input {
    File? barcodes_csv
    Directory? output_directory
    Int? alignment_records_batch
    Boolean? bed
    String? forbidden_tags
    Int? min_mapq
  }
  command <<<
    sctools_demultiplex \
      ~{if defined(barcodes_csv) then ("--barcodes-csv " +  '"' + barcodes_csv + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(alignment_records_batch) then ("--alignment-records-batch " +  '"' + alignment_records_batch + '"') else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if defined(forbidden_tags) then ("--forbidden-tags " +  '"' + forbidden_tags + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""}
  >>>
  parameter_meta {
    barcodes_csv: "Path to the CSV file storing the barcodes to be de-multiplexed.\\nNotice that the barcode value is expected to be found in first\\nposition."
    output_directory: "Path of the directory where de-multiplexed files are stored.\\nDefault: .."
    alignment_records_batch: "Maximum size of the batch of alignment records loaded in main\\nmemory. Default: 1048576."
    bed: "Ouput bed files alongside bam ones."
    forbidden_tags: "Coma-separated list of tags that are forbidden in any valid\\nalignment records. If an alignment record contains any of the tags\\nspecified here, it is not considered for the purpose of the\\nde-multiplexing procedure."
    min_mapq: "Minimum mapping quality any alignment record must have, to be\\nconsidered for the purpose of the de-multiplexing procedure.\\nDefault: 0."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}