class: CommandLineTool
id: gfinisher.cwl
inputs:
- id: in_contigsscaffolds_input_file
  doc: contigs/scaffolds input file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_ds
  doc: dataset files names (one or more separated by comma)
  type: boolean?
  inputBinding:
    prefix: -ds
- id: in_output_directory
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_verbose_mode
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ref
  doc: genome sequence reference in fasta format
  type: boolean?
  inputBinding:
    prefix: -ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- gfinisher
