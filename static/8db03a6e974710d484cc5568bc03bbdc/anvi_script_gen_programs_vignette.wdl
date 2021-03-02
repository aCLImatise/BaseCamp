version 1.0

task Anviscriptgenprogramsvignette {
  input {
    File? output_file
    String? program_names_to_focus
  }
  command <<<
    anvi_script_gen_programs_vignette \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(program_names_to_focus) then ("--program-names-to-focus " +  '"' + program_names_to_focus + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "File path to store results."
    program_names_to_focus: "Comma-spearated list of program names to focus Mostly\\nfor debugging purposes.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}