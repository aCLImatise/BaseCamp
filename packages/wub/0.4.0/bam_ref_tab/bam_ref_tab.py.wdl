version 1.0

task BamRefTabpy {
  input {
    File? tab_separated_file
    Boolean? quiet_print_false
    Boolean? save_read_strand
    String bam
  }
  command <<<
    bam_ref_tab_py \
      ~{bam} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{if (quiet_print_false) then "-Q" else ""} \
      ~{if (save_read_strand) then "-s" else ""}
  >>>
  parameter_meta {
    tab_separated_file: "Tab separated file to save reference table."
    quiet_print_false: "Be quiet and do not print progress bar (False)."
    save_read_strand: "Save read strand in output (False)."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
  }
}