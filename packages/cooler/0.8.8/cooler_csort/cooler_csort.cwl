class: CommandLineTool
id: cooler_csort.cwl
inputs:
- id: in_chrom_one
  doc: "chrom1 field number in the input file (starting\nfrom 1)  [required]"
  type: long
  inputBinding:
    prefix: --chrom1
- id: in_chrom_two
  doc: chrom2 field number  [required]
  type: long
  inputBinding:
    prefix: --chrom2
- id: in_pos_one
  doc: pos1 field number  [required]
  type: long
  inputBinding:
    prefix: --pos1
- id: in_pos_two
  doc: pos2 field number  [required]
  type: long
  inputBinding:
    prefix: --pos2
- id: in_index
  doc: "[tabix|pairix]  Select the preset sort and indexing options\n[default: pairix]"
  type: boolean
  inputBinding:
    prefix: --index
- id: in_flip_only
  doc: "Only flip mates; no sorting or indexing. Write\nto stdout.  [default: False]"
  type: boolean
  inputBinding:
    prefix: --flip-only
- id: in_nproc
  doc: 'Number of processors  [default: 8]'
  type: long
  inputBinding:
    prefix: --nproc
- id: in_zero_based
  doc: 'Read positions are zero-based  [default: False]'
  type: boolean
  inputBinding:
    prefix: --zero-based
- id: in_sep
  doc: 'Data delimiter in the input file  [default: \t]'
  type: File
  inputBinding:
    prefix: --sep
- id: in_comment_char
  doc: 'Comment character to skip header  [default: #]'
  type: string
  inputBinding:
    prefix: --comment-char
- id: in_sort_options
  doc: Quoted list of additional options to `sort`
  type: string
  inputBinding:
    prefix: --sort-options
- id: in_strand_one
  doc: strand1 field number (deprecated)
  type: long
  inputBinding:
    prefix: --strand1
- id: in_strand_two
  doc: strand2 field number (deprecated)
  type: long
  inputBinding:
    prefix: --strand2
- id: in_command
  doc: -o, --out TEXT              Output gzip file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- csort
