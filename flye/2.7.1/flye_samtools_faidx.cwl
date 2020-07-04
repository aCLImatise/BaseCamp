class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_faidx.cwl
inputs:
- id: output
  doc: Write FASTA to file.
  type: File
  inputBinding:
    prefix: --output
- id: length
  doc: Length of FASTA sequence line. [60]
  type: long
  inputBinding:
    prefix: --length
- id: continue
  doc: Continue after trying to retrieve missing region.
  type: boolean
  inputBinding:
    prefix: --continue
- id: region_file
  doc: File of regions.  Format is chr:from-to. One per line.
  type: File
  inputBinding:
    prefix: --region-file
- id: reverse_complement
  doc: complement sequences.
  type: string
  inputBinding:
    prefix: --reverse-complement
- id: mark_strand
  doc: Add strand indicator to sequence name TYPE = rc   for /rc on negative strand
    (default) no   for no strand indicator sign for (+) / (-) custom,<pos>,<neg> for
    custom indicator
  type: string
  inputBinding:
    prefix: --mark-strand
- id: fast_q
  doc: File and index in FASTQ format.
  type: boolean
  inputBinding:
    prefix: --fastq
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fa_idx
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filed_otf_a_vertical_line_file_dot_fado_tgz
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- faidx
