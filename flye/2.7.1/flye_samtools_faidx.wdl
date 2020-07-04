version 1.0

task FlyeSamtoolsFaidx {
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
    flye-samtools faidx \
      ~{sam_tools} \
      ~{fa_idx} \
      ~{filed_otf_a_vertical_line_file_dot_fado_tgz} \
      ~{if defined(write_fasta_file) then ("--output " +  '"' + write_fasta_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reverse_complement) then ("--reverse-complement " +  '"' + reverse_complement + '"') else ""} \
      ~{if defined(mark_strand) then ("--mark-strand " +  '"' + mark_strand + '"') else ""} \
      ~{true="--fastq" false="" fast_q}
  >>>
  parameter_meta {
    write_fasta_file: "Write FASTA to file."
    length: "Length of FASTA sequence line. [60]"
    continue: "Continue after trying to retrieve missing region."
    region_file: "File of regions.  Format is chr:from-to. One per line."
    reverse_complement: "complement sequences."
    mark_strand: "Add strand indicator to sequence name TYPE = rc   for /rc on negative strand (default) no   for no strand indicator sign for (+) / (-) custom,<pos>,<neg> for custom indicator"
    fast_q: "File and index in FASTQ format."
    sam_tools: ""
    fa_idx: ""
    filed_otf_a_vertical_line_file_dot_fado_tgz: ""
  }
}