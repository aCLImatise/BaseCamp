version 1.0

task Corset {
  input {
    Int? running_i_will
    Int? running_i_option
    String input_bam_files
  }
  command <<<
    corset \
      ~{input_bam_files} \
      ~{if defined(running_i_will) then ("-l " +  '"' + running_i_will + '"') else ""} \
      ~{if defined(running_i_option) then ("-x " +  '"' + running_i_option + '"') else ""}
  >>>
  parameter_meta {
    running_i_will: "If running with -i corset or salmon_eq_classes, this will filter out a link between contigs if the link is supported by less than this many reads (performed sample-wise). Reads will  be reassigned uniformly to the contigs in the equivalence class. This option will improve runtime and memory usage, but will increase the number of clusters reported. Default: 1 (no filtering)"
    running_i_option: "If running with -i corset or salmon_eq_classes, this option will filter out reads that align to more than x contigs. Default: no filtering"
    input_bam_files: ""
  }
}