version 1.0

task BamSoftClipsTabpy {
  input {
    File? output_tab_file
    Boolean? be_quiet_print
    String bam
  }
  command <<<
    bam_soft_clips_tab_py \
      ~{bam} \
      ~{if defined(output_tab_file) then ("-t " +  '"' + output_tab_file + '"') else ""} \
      ~{if (be_quiet_print) then "-Q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    output_tab_file: "Output tab separated file."
    be_quiet_print: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
    File out_output_tab_file = "${in_output_tab_file}"
  }
}