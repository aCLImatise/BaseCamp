class: CommandLineTool
id: ReadSeq_reverse_comp.cwl
inputs:
- id: check
  doc: If set, will check orientation of the rRNA sequenc, only reverse complement
    if needed
  type: boolean
  inputBinding:
    prefix: --check
- id: format
  doc: output format, fasta or fastq. Default is fasta
  type: string
  inputBinding:
    prefix: --format
- id: in_file
  doc: input fasta file
  type: string
  inputBinding:
    prefix: --infile
- id: outfile
  doc: output fasta file
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- reverse-comp
