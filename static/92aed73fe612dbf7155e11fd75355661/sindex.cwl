class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sindex.cwl
inputs:
- id: output_ssi_index
  doc: ': output the SSI index to file named <f>'
  type: string
  inputBinding:
    prefix: -o
- id: force_index_mode
  doc: ': force index mode to 64-bit, even on small files'
  type: boolean
  inputBinding:
    prefix: --64
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
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: available
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sindex
