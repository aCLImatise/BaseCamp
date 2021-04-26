version 1.0

task Ribocutter {
  input {
    Array[String] input_fastqs
    File? output_filename
    Int? max_reads
    Int? min_read_length
    Int? t_seven
    String? overlap
  }
  command <<<
    ribocutter \
      ~{if defined(input_fastqs) then ("--input " +  '"' + input_fastqs + '"') else ""} \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""} \
      ~{if defined(max_reads) then ("--max_reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_read_length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(t_seven) then ("--t7 " +  '"' + t_seven + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribocutter:0.0.1--pyh5e36f6f_0"
  }
  parameter_meta {
    input_fastqs: "Input fastq(s)"
    output_filename: "output filename"
    max_reads: "max reads to examine"
    min_read_length: "A fasta file of background sequences that you do not\\nwish to target"
    t_seven: "T7 promoter sequence"
    overlap: "The overlap, compatible with EnGen NEB kit"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}