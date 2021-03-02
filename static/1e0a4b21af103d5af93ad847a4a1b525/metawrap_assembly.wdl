version 1.0

task MetawrapAssembly {
  input {
    Int? forward_fastq_reads
    Int? reverse_fastq_reads
    Directory? output_directory
    Int? memory_gb_default
    Int? number_threads_defualt
    Int? minimum_length_assembled
    Boolean? mega_hit
    Boolean? meta_spades
  }
  command <<<
    metawrap assembly \
      ~{if defined(forward_fastq_reads) then ("-1 " +  '"' + forward_fastq_reads + '"') else ""} \
      ~{if defined(reverse_fastq_reads) then ("-2 " +  '"' + reverse_fastq_reads + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(memory_gb_default) then ("-m " +  '"' + memory_gb_default + '"') else ""} \
      ~{if defined(number_threads_defualt) then ("-t " +  '"' + number_threads_defualt + '"') else ""} \
      ~{if defined(minimum_length_assembled) then ("-l " +  '"' + minimum_length_assembled + '"') else ""} \
      ~{if (mega_hit) then "--megahit" else ""} \
      ~{if (meta_spades) then "--metaspades" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    forward_fastq_reads: "forward fastq reads"
    reverse_fastq_reads: "reverse fastq reads"
    output_directory: "output directory"
    memory_gb_default: "memory in GB (default=24)"
    number_threads_defualt: "number of threads (defualt=1)"
    minimum_length_assembled: "minimum length of assembled contigs (default=1000)"
    mega_hit: "assemble with megahit (default)"
    meta_spades: "assemble with metaspades instead of megahit (better results but slower amd higher memory requirement)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}