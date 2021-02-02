version 1.0

task ReduceGtf {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    String extracted_dot
    File file_dot
  }
  command <<<
    ReduceGtf \
      ~{extracted_dot} \
      ~{file_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    extracted_dot: "This is the 3rd field of the GTF file, some examples of standard feature types"
    file_dot: "Default value: [pseudogene, polymorphic_pseudogene, TR_J_pseudogene,"
  }
  output {
    File out_stdout = stdout()
  }
}