class: CommandLineTool
id: deepac_eval.cwl
inputs:
- id: in_species
  doc: Species-wise evaluation.
  type: string
  inputBinding:
    prefix: --species
- id: in_reads
  doc: Read-wise evaluation.
  type: string
  inputBinding:
    prefix: --reads
- id: in_ensemble
  doc: "Simple ensemble evaluation.\n"
  type: string
  inputBinding:
    prefix: --ensemble
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac
- eval
