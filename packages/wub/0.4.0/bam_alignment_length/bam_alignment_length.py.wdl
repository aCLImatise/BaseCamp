version 1.0

task BamAlignmentLengthpy {
  input {
    File? tab_separated_file
    Int? minimum_alignment_quality
    Boolean? sort_number_read
    Boolean? quiet_print_false
    String bam
  }
  command <<<
    bam_alignment_length_py \
      ~{bam} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if (sort_number_read) then "-x" else ""} \
      ~{if (quiet_print_false) then "-Q" else ""}
  >>>
  parameter_meta {
    tab_separated_file: "Tab separated file to save alignment lengths\\n(bam_alignment_length.tsv)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    sort_number_read: "Sort by number of read bases instead of number of aligned\\nreference bases."
    quiet_print_false: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
  }
}