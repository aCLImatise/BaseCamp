version 1.0

task BamAlignmentLength.py {
  input {
    String? tab_separated_file
    String? minimum_alignment_quality
    Boolean? sort_number_number
    Boolean? quiet_print_bar
    String bam
  }
  command <<<
    bam_alignment_length.py \
      ~{bam} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{true="-x" false="" sort_number_number} \
      ~{true="-Q" false="" quiet_print_bar}
  >>>
  parameter_meta {
    tab_separated_file: "Tab separated file to save alignment lengths (bam_alignment_length.tsv)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    sort_number_number: "Sort by number of read bases instead of number of aligned reference bases."
    quiet_print_bar: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
}