version 1.0

task FlyeSamtoolsBedcov {
  input {
    File? reference
    String sam_tools
    String bed_cov
    String in_dot_bed
    String in_one_dot_bam
  }
  command <<<
    flye-samtools bedcov \
      ~{sam_tools} \
      ~{bed_cov} \
      ~{in_dot_bed} \
      ~{in_one_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    sam_tools: ""
    bed_cov: ""
    in_dot_bed: ""
    in_one_dot_bam: ""
  }
}