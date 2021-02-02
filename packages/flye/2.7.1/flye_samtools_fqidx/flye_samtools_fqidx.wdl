version 1.0

task FlyesamtoolsFqidx {
  input {
    File? write_fastq_file
    Int? length
    Boolean? continue
    File? region_file
    String? reverse_complement
    String? mark_strand
    String sam_tools
    String fq_idx
    File file_dot_fq_vertical_line_file_dot_fq_do_tgz
  }
  command <<<
    flye_samtools fqidx \
      ~{sam_tools} \
      ~{fq_idx} \
      ~{file_dot_fq_vertical_line_file_dot_fq_do_tgz} \
      ~{if defined(write_fastq_file) then ("--output " +  '"' + write_fastq_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reverse_complement) then ("--reverse-complement " +  '"' + reverse_complement + '"') else ""} \
      ~{if defined(mark_strand) then ("--mark-strand " +  '"' + mark_strand + '"') else ""}
  >>>
  parameter_meta {
    write_fastq_file: "Write FASTQ to file."
    length: "Length of FASTQ sequence line. [60]"
    continue: "Continue after trying to retrieve missing region."
    region_file: "File of regions.  Format is chr:from-to. One per line."
    reverse_complement: "complement sequences."
    mark_strand: "Add strand indicator to sequence name\\nTYPE = rc   for /rc on negative strand (default)\\nno   for no strand indicator\\nsign for (+) / (-)\\ncustom,<pos>,<neg> for custom indicator"
    sam_tools: ""
    fq_idx: ""
    file_dot_fq_vertical_line_file_dot_fq_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}