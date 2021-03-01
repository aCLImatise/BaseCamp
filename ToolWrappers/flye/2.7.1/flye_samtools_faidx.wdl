version 1.0

task FlyesamtoolsFaidx {
  input {
    File? write_fasta_file
    Int? length
    Boolean? continue
    File? region_file
    String? reverse_complement
    String? mark_strand
    Boolean? fast_q
    String sam_tools
    String fa_idx
    File filed_otf_a_vertical_line_file_dot_fado_tgz
  }
  command <<<
    flye_samtools faidx \
      ~{sam_tools} \
      ~{fa_idx} \
      ~{filed_otf_a_vertical_line_file_dot_fado_tgz} \
      ~{if defined(write_fasta_file) then ("--output " +  '"' + write_fasta_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reverse_complement) then ("--reverse-complement " +  '"' + reverse_complement + '"') else ""} \
      ~{if defined(mark_strand) then ("--mark-strand " +  '"' + mark_strand + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_fasta_file: "Write FASTA to file."
    length: "Length of FASTA sequence line. [60]"
    continue: "Continue after trying to retrieve missing region."
    region_file: "File of regions.  Format is chr:from-to. One per line."
    reverse_complement: "complement sequences."
    mark_strand: "Add strand indicator to sequence name\\nTYPE = rc   for /rc on negative strand (default)\\nno   for no strand indicator\\nsign for (+) / (-)\\ncustom,<pos>,<neg> for custom indicator"
    fast_q: "File and index in FASTQ format."
    sam_tools: ""
    fa_idx: ""
    filed_otf_a_vertical_line_file_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}