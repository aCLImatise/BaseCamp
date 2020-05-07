class: CommandLineTool
id: sindex.cwl
inputs:
- id: o
  doc: ': output the SSI index to file named <f>'
  type: string
  inputBinding:
    prefix: -o
- id: external
  doc: ': force index compilation to use external (on-disk) sorting'
  type: boolean
  inputBinding:
    prefix: --external
- id: in_format
  doc: ': specify input sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: pfam_seq
  doc: ': index a FASTA file with >(name) (accession) (desc)'
  type: boolean
  inputBinding:
    prefix: --pfamseq
outputs: []
cwlVersion: v1.1
baseCommand:
- sindex
