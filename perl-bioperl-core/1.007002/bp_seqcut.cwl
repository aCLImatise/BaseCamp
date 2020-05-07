class: CommandLineTool
id: bp_seqcut.pl.cwl
inputs:
- id: h
  doc: help message
  type: string
  inputBinding:
    prefix: -h
- id: s
  doc: residue to start cutting on
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: residue to finish cutting on
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string
  inputBinding:
    prefix: -f
- id: w
  doc: wrap width, this might not be supported depending on which format you are using
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqcut.pl
