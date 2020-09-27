class: CommandLineTool
id: anvi_script_gen_programs_vignette.cwl
inputs:
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_program_names_to_focus
  doc: "Comma-spearated list of program names to focus Mostly\nfor debugging purposes.\n"
  type: string
  inputBinding:
    prefix: --program-names-to-focus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-programs-vignette
