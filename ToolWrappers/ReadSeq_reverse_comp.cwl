class: CommandLineTool
id: ReadSeq_reverse_comp.cwl
inputs:
- id: in_check
  doc: If set, will check orientation of the rRNA sequenc, only reverse complement
    if needed
  type: boolean
  inputBinding:
    prefix: --check
- id: in_format
  doc: output format, fasta or fastq. Default is fasta
  type: string
  inputBinding:
    prefix: --format
- id: in_in_file
  doc: input fasta file
  type: File
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: output fasta file
  type: File
  inputBinding:
    prefix: --outfile
- id: in_rev_complement
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output fasta file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- ReadSeq
- reverse-comp
