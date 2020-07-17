version 1.0

task FastqB2n.py {
  input {
    String? input_file_fastq
    String? output_fastq_file
    Boolean? find
    Boolean? ambiguous
    Boolean? sanger
    String? replacement
    String? threshold
  }
  command <<<
    fastq_b2n.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{true="--find" false="" find} \
      ~{true="--ambiguous" false="" ambiguous} \
      ~{true="--sanger" false="" sanger} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file (in FASTQ format) containing the short reads to be processed."
    output_fastq_file: "The output FASTQ file containing the short reads where the nucleotides with low quality score 'B' have been converted to ambigous nucleotide N."
    find: "By default the only tails of B quality are removed. If this is used then the first occurence of B is used to trim the read."
    ambiguous: "By default the ambigous nucleotides are not convert to As. If this is set then all ambigous nucleotides will be converted to As."
    sanger: "By default read qualities are in Illumina v1.5 format and the character 'B' is used to search qualities. If this is used than the character '#' (that is B in Sanger format) is used to search the qualities."
    replacement: "The character to be use for replacing the nucleotide which have the quality score Q2. Default is 'N'."
    threshold: "If if this is larger than zero then all the short reads strictly shorter than this threshold (if the trimming of Bs would be done) are removed. Default is '0'."
  }
}