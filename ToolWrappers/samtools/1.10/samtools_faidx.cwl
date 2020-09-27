class: CommandLineTool
id: samtools_faidx.cwl
inputs:
- id: in_output
  doc: Write FASTA to file.
  type: File
  inputBinding:
    prefix: --output
- id: in_length
  doc: Length of FASTA sequence line. [60]
  type: long
  inputBinding:
    prefix: --length
- id: in_continue
  doc: Continue after trying to retrieve missing region.
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_region_file
  doc: File of regions.  Format is chr:from-to. One per line.
  type: File
  inputBinding:
    prefix: --region-file
- id: in_reverse_complement
  doc: complement sequences.
  type: string
  inputBinding:
    prefix: --reverse-complement
- id: in_mark_strand
  doc: "Add strand indicator to sequence name\nTYPE = rc   for /rc on negative strand\
    \ (default)\nno   for no strand indicator\nsign for (+) / (-)\ncustom,<pos>,<neg>\
    \ for custom indicator"
  type: string
  inputBinding:
    prefix: --mark-strand
- id: in_fast_q
  doc: File and index in FASTQ format.
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_filed_otf_a_vertical_line_file_dot_fado_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- faidx
