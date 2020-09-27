class: CommandLineTool
id: seq_seq_pan_genomedescription.cwl
inputs:
- id: in_input
  doc: File with list of /paths/to/files.fasta
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: name of output file
  type: File
  inputBinding:
    prefix: --output
- id: in_add
  doc: "Add new genome description to this file.\n"
  type: File
  inputBinding:
    prefix: --add
- id: in_genome_description_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: name of output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- seq-seq-pan-genomedescription
