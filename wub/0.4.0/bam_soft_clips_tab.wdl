version 1.0

task BamSoftClipsTab.py {
  input {
    String? output_tab_separated
    Boolean? quiet_print_bar
    String bam
  }
  command <<<
    bam_soft_clips_tab.py \
      ~{bam} \
      ~{if defined(output_tab_separated) then ("-t " +  '"' + output_tab_separated + '"') else ""} \
      ~{true="-Q" false="" quiet_print_bar}
  >>>
  parameter_meta {
    output_tab_separated: "Output tab separated file."
    quiet_print_bar: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
}