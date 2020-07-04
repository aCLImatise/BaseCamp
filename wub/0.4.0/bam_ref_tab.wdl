version 1.0

task BamRefTab.py {
  input {
    String? tab_separated_file
    Boolean? quiet_print_bar
    Boolean? save_read_strand
    String bam
  }
  command <<<
    bam_ref_tab.py \
      ~{bam} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{true="-Q" false="" quiet_print_bar} \
      ~{true="-s" false="" save_read_strand}
  >>>
  parameter_meta {
    tab_separated_file: "Tab separated file to save reference table."
    quiet_print_bar: "Be quiet and do not print progress bar (False)."
    save_read_strand: "Save read strand in output (False)."
    bam: "Input BAM file."
  }
}