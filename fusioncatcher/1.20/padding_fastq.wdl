version 1.0

task PaddingFastq.py {
  input {
    String? input_file_fastq
    String? output_fastq_file
    String? nucleotide
    Int? size
  }
  command <<<
    padding-fastq.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(nucleotide) then ("--nucleotide " +  '"' + nucleotide + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file (in FASTQ format) containing the short reads to be processed."
    output_fastq_file: "The output FASTQ file containing the short reads where the reads, shorted than '--size', are padding using ' --nucleotide'."
    nucleotide: "The character to be use for padding. Default is 'N'."
    size: "If if this is larger than zero then all the short reads strictly shorter than this threshold will be padded. Reads longer than the threshold will be trimmed from 3 end. Default is '0'."
  }
}