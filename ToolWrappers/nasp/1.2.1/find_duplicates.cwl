class: CommandLineTool
id: find_duplicates.cwl
inputs:
- id: in_nuc_me_rpath
  doc: Path to the 'nucmer' executable.
  type: File
  inputBinding:
    prefix: --nucmerpath
- id: in_reference
  doc: "Path to the reference fasta file.\n"
  type: File
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find_duplicates
