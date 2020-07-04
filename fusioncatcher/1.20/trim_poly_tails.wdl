version 1.0

task TrimPolyTails.py {
  input {
    String? input_file_fastq
    String? output_fastq_file
    String? repeats
    Boolean? skip_reads
    Boolean? keep_too_short
    String? keep_too_short_length
  }
  command <<<
    trim_poly_tails.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{true="--skip_reads" false="" skip_reads} \
      ~{true="--keep-too-short" false="" keep_too_short} \
      ~{if defined(keep_too_short_length) then ("--keep-too-short-length " +  '"' + keep_too_short_length + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ format."
    output_fastq_file: "The output FASTQ file containing all the trimmed sequences."
    repeats: "The number of times a nucleotide specified with '-- nucleotide' should be repeated in order to be considered a poly Default is 9."
    skip_reads: "If this is specified then the reads which are having poly tails are filtered out (i.e. not written to the output) instead of trimming. Default is False."
    keep_too_short: "If this is specified then the reads which are less than N bp will be kept, where N is set using '--keep- too-short-length'. Default is False."
    keep_too_short_length: "The threshold used to decide when a read is too short. Default is 20."
  }
}