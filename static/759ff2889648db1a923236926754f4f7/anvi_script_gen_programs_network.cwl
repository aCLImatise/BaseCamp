class: CommandLineTool
id: anvi_script_gen_programs_network.cwl
inputs:
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: program_names_to_focus
  doc: Comma-spearated list of program names to focus Mostly for debugging purposes.
  type: string
  inputBinding:
    prefix: --program-names-to-focus
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-programs-network
