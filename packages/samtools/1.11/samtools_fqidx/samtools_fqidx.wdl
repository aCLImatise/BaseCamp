version 1.0

task SamtoolsFqidx {
  input {
    File? write_fastq_file
    Int? length
    Boolean? continue
    File? region_file
    String? reverse_complement
    String? mark_strand
    Boolean? fai_idx
    Boolean? gz_i_idx
    File file_dot_fq_vertical_line_file_dot_fq_do_tgz
  }
  command <<<
    samtools fqidx \
      ~{file_dot_fq_vertical_line_file_dot_fq_do_tgz} \
      ~{if defined(write_fastq_file) then ("--output " +  '"' + write_fastq_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reverse_complement) then ("--reverse-complement " +  '"' + reverse_complement + '"') else ""} \
      ~{if defined(mark_strand) then ("--mark-strand " +  '"' + mark_strand + '"') else ""} \
      ~{if (fai_idx) then "--fai-idx" else ""} \
      ~{if (gz_i_idx) then "--gzi-idx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    write_fastq_file: "Write FASTQ to file."
    length: "Length of FASTQ sequence line. [60]"
    continue: "Continue after trying to retrieve missing region."
    region_file: "File of regions.  Format is chr:from-to. One per line."
    reverse_complement: "complement sequences."
    mark_strand: "Add strand indicator to sequence name\\nTYPE = rc   for /rc on negative strand (default)\\nno   for no strand indicator\\nsign for (+) / (-)\\ncustom,<pos>,<neg> for custom indicator"
    fai_idx: "FILE  name of the index file (default file.fq.fai)."
    gz_i_idx: "FILE  name of compressed file index (default file.fq.gz.gzi)."
    file_dot_fq_vertical_line_file_dot_fq_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}