version 1.0

task BamRefTabpy {
  input {
    File? tab_separated_file
    Boolean? be_quiet_print
    Boolean? save_read_strand
    String bam
  }
  command <<<
    bam_ref_tab_py \
      ~{bam} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{if (be_quiet_print) then "-Q" else ""} \
      ~{if (save_read_strand) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    tab_separated_file: "Tab separated file to save reference table."
    be_quiet_print: "Be quiet and do not print progress bar (False)."
    save_read_strand: "Save read strand in output (False)."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
  }
}