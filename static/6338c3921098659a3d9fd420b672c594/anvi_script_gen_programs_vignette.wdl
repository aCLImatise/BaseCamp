version 1.0

task AnviScriptGenProgramsVignette {
  input {
    File? output_file
    String? program_names_to_focus
  }
  command <<<
    anvi-script-gen-programs-vignette \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(program_names_to_focus) then ("--program-names-to-focus " +  '"' + program_names_to_focus + '"') else ""}
  >>>
  parameter_meta {
    output_file: "File path to store results."
    program_names_to_focus: "Comma-spearated list of program names to focus Mostly for debugging purposes."
  }
}