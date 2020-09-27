version 1.0

task Pullseq {
  input {
    Boolean? input_fastafastq_file
    Boolean? names
    Boolean? names_stdin
    Boolean? regex
    Boolean? min
    Boolean? max
    Boolean? length
    Boolean? convert
    Boolean? quality
    Boolean? excluded
    Boolean? count
    Boolean? verbose
    String cat
    String names_to_select_from_stdin
  }
  command <<<
    pullseq \
      ~{cat} \
      ~{names_to_select_from_stdin} \
      ~{if (input_fastafastq_file) then "--input" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (names_stdin) then "--names_stdin" else ""} \
      ~{if (regex) then "--regex" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (convert) then "--convert" else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if (excluded) then "--excluded" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_fastafastq_file: ",       Input fasta/fastq file (required)"
    names: ",       File of header id names to search for"
    names_stdin: ", Use STDIN for header id names"
    regex: ",       Regular expression to match (PERL compatible; always case-insensitive)"
    min: ",         Minimum sequence length"
    max: ",         Maximum sequence length"
    length: ",      Sequence characters per line (default 50)"
    convert: ",     Convert input to fastq/fasta (e.g. if input is fastq, output will be fasta)"
    quality: ",     ASCII code to use for fasta->fastq quality conversions"
    excluded: ",    Exclude the header id names in the list (-n)"
    count: ",       Just count the possible output, but don't write it"
    verbose: ",     Print extra details during the run"
    cat: ""
    names_to_select_from_stdin: ""
  }
  output {
    File out_stdout = stdout()
  }
}