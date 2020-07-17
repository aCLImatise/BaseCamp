version 1.0

task TrimReads.py {
  input {
    String? input_fastq_file
    String? trim_size
    Int? final_size
    String? trim_end
    Boolean? trim_n
    String? output_fastq_file
  }
  command <<<
    trim_reads.py \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(trim_size) then ("--trim_size " +  '"' + trim_size + '"') else ""} \
      ~{if defined(final_size) then ("--final_size " +  '"' + final_size + '"') else ""} \
      ~{if defined(trim_end) then ("--trim_end " +  '"' + trim_end + '"') else ""} \
      ~{true="--trim_n" false="" trim_n} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_file: "Input FASTQ file which contanins the reads which will be trimmed."
    trim_size: "The size of part which is trimmed from each read. It should not be used together with --size!"
    final_size: "The size of read part which is left after trimming. If the read is shorter than this then no trimming is performed."
    trim_end: "The end of the short read where the trimming will be done. The choices are [5,3]."
    trim_n: "It trims the Ns from the reads sequence ends, wherever is possible, such that to minimize the amount of Ns in the read sequence which is left after the trimming. It works only with '--final_size'.'"
    output_fastq_file: "The output FASTQ file containing the trimmed reads."
  }
}