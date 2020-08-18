class: CommandLineTool
id: ../../../msstitch_splitperco.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: prot_headers
  doc: Specify protein FASTA headers to split on. Multiple headers of the same split-type
    can be grouped with semicolons. E.g. --protheaders 'ENSP;sp PSEUDOGEN;ncRNA' would
    split into ENSP/swissprot peptides and pseudogenes/non-coding RNA peptides.
  type: string[]
  inputBinding:
    prefix: --protheaders
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- splitperco
