class: CommandLineTool
id: msslookup_protspace.cwl
inputs:
- id: i
  doc: Input file of FASTA format
  type: string
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- protspace
