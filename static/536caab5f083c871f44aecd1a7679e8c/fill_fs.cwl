class: CommandLineTool
id: fill_fs.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: bed_mask
  doc: Regions to mask (tabix indexed), multiple files can be given
  type: File
  inputBinding:
    prefix: --bed-mask
- id: cluster
  doc: Do self-masking of clustered variants within this range.
  type: long
  inputBinding:
    prefix: --cluster
- id: length
  doc: Flanking sequence length [100]
  type: long
  inputBinding:
    prefix: --length
- id: mask_char
  doc: <char|lc>       The character to use or "lc" for lowercase. This option must
    preceed -b, -v or -c in order to take effect. With multiple files works as a switch
    on the command line, see the example below [N]
  type: boolean
  inputBinding:
    prefix: --mask-char
- id: refseq
  doc: The reference sequence.
  type: File
  inputBinding:
    prefix: --refseq
- id: vcf_mask
  doc: Mask known variants in the flanking sequence, multiple files can be given (tabix
    indexed)
  type: File
  inputBinding:
    prefix: --vcf-mask
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-fs
