version 1.0

task BamSoftClipsTabpy {
  input {
    File? output_tab_separated
    Boolean? quiet_print_false
    String bam
  }
  command <<<
    bam_soft_clips_tab_py \
      ~{bam} \
      ~{if defined(output_tab_separated) then ("-t " +  '"' + output_tab_separated + '"') else ""} \
      ~{if (quiet_print_false) then "-Q" else ""}
  >>>
  parameter_meta {
    output_tab_separated: "Output tab separated file."
    quiet_print_false: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
    File out_output_tab_separated = "${in_output_tab_separated}"
  }
}