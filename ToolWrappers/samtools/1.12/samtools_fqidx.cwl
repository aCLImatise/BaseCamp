class: CommandLineTool
id: samtools_fqidx.cwl
inputs:
- id: in_output
  doc: Write FASTQ to file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_length
  doc: Length of FASTQ sequence line. [60]
  type: long?
  inputBinding:
    prefix: --length
- id: in_continue
  doc: Continue after trying to retrieve missing region.
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_region_file
  doc: File of regions.  Format is chr:from-to. One per line.
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_reverse_complement
  doc: complement sequences.
  type: string?
  inputBinding:
    prefix: --reverse-complement
- id: in_mark_strand
  doc: "Add strand indicator to sequence name\nTYPE = rc   for /rc on negative strand\
    \ (default)\nno   for no strand indicator\nsign for (+) / (-)\ncustom,<pos>,<neg>\
    \ for custom indicator"
  type: string?
  inputBinding:
    prefix: --mark-strand
- id: in_fai_idx
  doc: FILE  name of the index file (default file.fq.fai).
  type: boolean?
  inputBinding:
    prefix: --fai-idx
- id: in_gz_i_idx
  doc: FILE  name of compressed file index (default file.fq.gz.gzi).
  type: boolean?
  inputBinding:
    prefix: --gzi-idx
- id: in_file_dot_fq_vertical_line_file_dot_fq_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- fqidx
