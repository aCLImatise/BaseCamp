version 1.0

task AMASpySummary {
  input {
    File? summary_out
    Boolean? by_tax_on
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String? c
    String check
  }
  command <<<
    AMAS_py summary \
      ~{check} \
      ~{if defined(summary_out) then ("--summary-out " +  '"' + summary_out + '"') else ""} \
      ~{if (by_tax_on) then "--by-taxon" else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    summary_out: "File name for the alignment summary. Default:\\n'summary.txt'"
    by_tax_on: "In addition to alignment summary, write by\\nsequence/taxon summaries. Default: Don't write"
    check_align: "Check if input sequences are aligned. Default: no"
    in_files: "Alignment files to be taken as input. You can specify\\nmultiple files using wildcards (e.g. --in-files\\n*fasta)"
    in_format: "The format of input alignment"
    data_type: "Type of data\\n"
    c: ""
    check: "-c CORES, --cores CORES"
  }
  output {
    File out_stdout = stdout()
  }
}