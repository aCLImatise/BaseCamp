class: CommandLineTool
id: rnazMAF2BED.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: seq_id
  doc: Specify the sequence identifier of the sequence which should be used as a reference
    to create the output. Use for example "hg17" if you want to get all sequences
    containing "hg17" in the idenitfier (e.g. "hg17.chr10", "hg17.chr22",...). If
    this option is omitted, the first sequence identifier of the first sequence in
    the first alignment block is used.
  type: boolean
  inputBinding:
    prefix: --seq-id
- id: cluster
  doc: Combine overlapping alignments and report non-overlapping regions in the BED
    output.
  type: boolean
  inputBinding:
    prefix: --cluster
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazMAF2BED.pl
