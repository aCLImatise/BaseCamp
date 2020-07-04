version 1.0

task SctoolsDemultiplex {
  input {
    String? barcodes_csv
    String? output_directory
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
      ~{true="--bed" false="" bed} \
      ~{if defined(forbidden_tags) then ("--forbidden-tags " +  '"' + forbidden_tags + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""}
  >>>
  parameter_meta {
    barcodes_csv: "Path to the CSV file storing the barcodes to be de-multiplexed. Notice that the barcode value is expected to be found in first position."
    output_directory: "Path of the directory where de-multiplexed files are stored. Default: .."
    alignment_records_batch: "Maximum size of the batch of alignment records loaded in main memory. Default: 1048576."
    bed: "Ouput bed files alongside bam ones."
    forbidden_tags: "Coma-separated list of tags that are forbidden in any valid alignment records. If an alignment record contains any of the tags specified here, it is not considered for the purpose of the de-multiplexing procedure."
    min_mapq: "Minimum mapping quality any alignment record must have, to be considered for the purpose of the de-multiplexing procedure. Default: 0."
  }
}