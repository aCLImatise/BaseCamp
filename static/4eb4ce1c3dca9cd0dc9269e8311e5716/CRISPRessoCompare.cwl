class: CommandLineTool
id: CRISPRessoCompare.cwl
inputs:
- id: in_comparison
  doc: "two CRISPResso analysis-\n)                                              \
    \  )"
  type: string?
  inputBinding:
    prefix: -Comparison
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_sample_one_name
  doc: 'Sample 1 name (default: Sample_1)'
  type: long?
  inputBinding:
    prefix: --sample_1_name
- id: in_sample_two_name
  doc: 'Sample 2 name (default: Sample_2)'
  type: long?
  inputBinding:
    prefix: --sample_2_name
- id: in_output_folder
  doc: "Save also .png images additionally to .pdf files\n(default: False)\n"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_cris_presso_output_folder_one
  doc: First output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 0
- id: in_cris_presso_output_folder_two
  doc: Second output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Save also .png images additionally to .pdf files\n(default: False)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
