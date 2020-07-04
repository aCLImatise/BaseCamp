version 1.0

task ExtractShortReads.py {
  input {
    String? input_file_fastq
    String? list
    String? output_fastq_file
    Boolean? mate
    String? buffer_size
  }
  command <<<
    extract_short_reads.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{true="--mate" false="" mate} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ format (Solexa). Can be given as gzipped file too."
    list: "A text file containing on each line a name of short read which should be extracted from the input FASTQ file."
    output_fastq_file: "The output FASTQ file."
    mate: "If specified then only the mate reads from the input list '--list' are extracted. Default is False."
    buffer_size: "The size of the buffer used for keeping the list of reads ids (given by --list). Default is 2000000000."
  }
}