version 1.0

task QualityScores {
  input {
    File? name_including_data
    File? gz_fast_q_input
    Boolean? bam_input
    Boolean? sam_input
    Boolean? first_end
    Boolean? second_end
    Int? counted_reads
    Int? phred_offset
    String fast_q_dot
  }
  command <<<
    qualityScores \
      ~{fast_q_dot} \
      ~{if defined(name_including_data) then ("-i " +  '"' + name_including_data + '"') else ""} \
      ~{if defined(gz_fast_q_input) then ("--gzFASTQinput " +  '"' + gz_fast_q_input + '"') else ""} \
      ~{if (bam_input) then "--BAMinput" else ""} \
      ~{if (sam_input) then "--SAMinput" else ""} \
      ~{if (first_end) then "--first-end" else ""} \
      ~{if (second_end) then "--second-end" else ""} \
      ~{if defined(counted_reads) then ("--counted-reads " +  '"' + counted_reads + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_including_data: "Name of input file including read data. The default format is"
    gz_fast_q_input: "file is in gzipped Fastq format."
    bam_input: "Input file is in BAM format."
    sam_input: "Input file is in SAM format."
    first_end: "Use only first reads in paired-end data. Only applicable for\\npaired-end BAM/SAM input."
    second_end: "Use only second reads in paired-end data. Only applicable for\\npaired-end BAM/SAM input."
    counted_reads: "Total number of reads to be extracted from the input\\nfile. 10,000 by default."
    phred_offset: "refer to subread aligner."
    fast_q_dot: "-o <string>  Name of output file that is a text file including Phred scores"
  }
  output {
    File out_stdout = stdout()
  }
}