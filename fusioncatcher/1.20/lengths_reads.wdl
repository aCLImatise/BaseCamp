version 1.0

task LengthsReads.py {
  input {
    String? input_file_fastq
    String? output_text_unique
    String? counts
  }
  command <<<
    lengths_reads.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_text_unique) then ("--output " +  '"' + output_text_unique + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ Solexa file (also given thru stdin or as gzipped file)."
    output_text_unique: "The output text file containg the unique lengths of the reads found in the input file. The unique lengths are sorted in descending order."
    counts: "The output text file containg the counts of reads found in the input file."
  }
}