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
  }
  command <<<
    pullseq \
      ~{true="--input" false="" input_fastafastq_file} \
      ~{true="--names" false="" names} \
      ~{true="--names_stdin" false="" names_stdin} \
      ~{true="--regex" false="" regex} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max} \
      ~{true="--length" false="" length} \
      ~{true="--convert" false="" convert} \
      ~{true="--quality" false="" quality} \
      ~{true="--excluded" false="" excluded} \
      ~{true="--count" false="" count} \
      ~{true="--verbose" false="" verbose}
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
  }
}