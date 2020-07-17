version 1.0

task Binlorry {
  input {
    String? fastafastq_input_reads
    String? data
    Boolean? unordered_data
    String? output_filename_filename
    Boolean? out_report
    Boolean? force_output
    String? verbosity
    Array[String] bin_by
    Array[String] filter_by
    Int? min_length
    Int? max_length
    String? header_delimiters
  }
  command <<<
    binlorry \
      ~{if defined(fastafastq_input_reads) then ("--input " +  '"' + fastafastq_input_reads + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{true="--unordered_data" false="" unordered_data} \
      ~{if defined(output_filename_filename) then ("--output " +  '"' + output_filename_filename + '"') else ""} \
      ~{true="--out-report" false="" out_report} \
      ~{true="--force-output" false="" force_output} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(bin_by) then ("--bin-by " +  '"' + bin_by + '"') else ""} \
      ~{if defined(filter_by) then ("--filter-by " +  '"' + filter_by + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(header_delimiters) then ("--header-delimiters " +  '"' + header_delimiters + '"') else ""}
  >>>
  parameter_meta {
    fastafastq_input_reads: "FASTA/FASTQ of input reads or a directory which will be recursively searched for FASTQ files (required)."
    data: "A CSV file with metadata fields for reads or a directory of csv files that will be recursively searched for names corresponding to a matching input FASTA/FASTQ files."
    unordered_data: "The metadata tables are not in the same order as the reads - they will all beloaded and then looked up as needed (slower). (default: False)"
    output_filename_filename: "Output filename (or filename prefix)"
    out_report: "Output a report along with FASTA/FASTQ. (default: False)"
    force_output: "Output binned/filtered files even if empty. (default: False)"
    verbosity: "Level of output information: 0 = none, 1 = some, 2 = lots (default: 1)"
    bin_by: "Specify header field(s) to bin the reads by. For multiple fields these will be nested in order specified. e.g. `--bin-by barcode reference`"
    filter_by: "Specify header field and accepted values to filter the reads by. Multiple instances of this option can be specified. e.g. `--filter-by barcode BC01 BC02-- filter-by genotype Type1`"
    min_length: "Filter the reads by their length, specifying the minimum length."
    max_length: "Filter the reads by their length, specifying the maximum length."
    header_delimiters: "Delimiters to use when searching for key:value pairs in FASTA/FASTQ header. (default: =)"
  }
}