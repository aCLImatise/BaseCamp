class: CommandLineTool
id: MosaikText.cwl
inputs:
- id: in_fast_q
  doc: stores the data in a FASTQ file
  type: File
  inputBinding:
    prefix: -fastq
- id: in_screen
  doc: displays the reads on the screen
  type: boolean
  inputBinding:
    prefix: -screen
- id: in_axt
  doc: stores the data in an AXT file
  type: File
  inputBinding:
    prefix: -axt
- id: in_bam
  doc: stores the data in a BAM file
  type: File
  inputBinding:
    prefix: -bam
- id: in_bed
  doc: stores the data in a BED file
  type: File
  inputBinding:
    prefix: -bed
- id: in_el_and
  doc: stores the data in an Eland file
  type: File
  inputBinding:
    prefix: -eland
- id: in_ref
  doc: displays output for a specific reference
  type: string
  inputBinding:
    prefix: -ref
- id: in_sam
  doc: stores the data in a SAM file
  type: File
  inputBinding:
    prefix: -sam
- id: in_limit_output_unique
  doc: limit output to unique reads
  type: boolean
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MosaikText
