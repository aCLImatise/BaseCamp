version 1.0

task Binlorry {
  input {
    File? fastafastq_directory_willbe
    File? data
    Boolean? unordered_data
    File? output_filename_prefix
    Boolean? out_report
    Boolean? force_output
    Int? verbosity
    Array[String] bin_by
    Array[String] filter_by
    Int? min_length
    Int? max_length
    String? header_delimiters
  }
  command <<<
    binlorry \
      ~{if defined(fastafastq_directory_willbe) then ("--input " +  '"' + fastafastq_directory_willbe + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (unordered_data) then "--unordered_data" else ""} \
      ~{if defined(output_filename_prefix) then ("--output " +  '"' + output_filename_prefix + '"') else ""} \
      ~{if (out_report) then "--out-report" else ""} \
      ~{if (force_output) then "--force-output" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(bin_by) then ("--bin-by " +  '"' + bin_by + '"') else ""} \
      ~{if defined(filter_by) then ("--filter-by " +  '"' + filter_by + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(header_delimiters) then ("--header-delimiters " +  '"' + header_delimiters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastafastq_directory_willbe: "FASTA/FASTQ of input reads or a directory which will\\nbe recursively searched for FASTQ files (required)."
    data: "A CSV file with metadata fields for reads or a\\ndirectory of csv files that will be recursively\\nsearched for names corresponding to a matching input\\nFASTA/FASTQ files."
    unordered_data: "The metadata tables are not in the same order as the\\nreads - they will all beloaded and then looked up as\\nneeded (slower). (default: False)"
    output_filename_prefix: "Output filename (or filename prefix)"
    out_report: "Output a report along with FASTA/FASTQ. (default:\\nFalse)"
    force_output: "Output binned/filtered files even if empty.\\n(default: False)"
    verbosity: "Level of output information: 0 = none, 1 = some, 2 =\\nlots (default: 1)"
    bin_by: "Specify header field(s) to bin the reads by. For\\nmultiple fields these will be nested in order\\nspecified. e.g. `--bin-by barcode reference`"
    filter_by: "Specify header field and accepted values to filter\\nthe reads by. Multiple instances of this option can\\nbe specified. e.g. `--filter-by barcode BC01 BC02--\\nfilter-by genotype Type1`"
    min_length: "Filter the reads by their length, specifying the\\nminimum length."
    max_length: "Filter the reads by their length, specifying the\\nmaximum length."
    header_delimiters: "Delimiters to use when searching for key:value pairs\\nin FASTA/FASTQ header. (default: =)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_prefix = "${in_output_filename_prefix}"
  }
}