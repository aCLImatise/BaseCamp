class: CommandLineTool
id: clean.cwl
inputs:
- id: in_assembly
  doc: filename of assembly in FASTA format
  type: File?
  inputBinding:
    prefix: --assembly
- id: in_csv
  doc: Tapestry CSV output
  type: string?
  inputBinding:
    prefix: --csv
- id: in_output
  doc: "filename of output contigs, default\nfiltered_assembly.fasta\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "filename of output contigs, default\nfiltered_assembly.fasta\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- clean
