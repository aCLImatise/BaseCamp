version 1.0

task CompressReadsIds.py {
  input {
    String? input_file_fastq
    String? output_text_file
    String? count_reads
    Boolean? no_one_two
    Boolean? not_interleaved
    Boolean? lowercase
  }
  command <<<
    compress-reads-ids.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(count_reads) then ("--count-reads " +  '"' + count_reads + '"') else ""} \
      ~{true="--no12" false="" no_one_two} \
      ~{true="--not-interleaved" false="" not_interleaved} \
      ~{true="--lowercase" false="" lowercase}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ Solexa file (also given thru STDOUT or as gzipped file). By default, it is assumed that the input reads are shuffled/interleaved (that is read id 1 is followed by read id 2 where read 1 and read 2 form a pair)."
    output_text_file: "The output text file containg the changed reads ids (also given thru STDOUT or as gzipped file)."
    count_reads: "The total number of reads in the input file. This is used in order to compress the best the reads ids."
    no_one_two: "If this is set than no /1 and /2 will be added to the compressed reads ids. It has an effect only on interleaved inputs."
    not_interleaved: "If it is set then the input reads from the input FASTQ files are not interleaved. Also no /1 or /2 is added to the reads ids."
    lowercase: "If this is set then also lowercase charcaters will be used for read ids in FASTQ files."
  }
}