class: CommandLineTool
id: MosaikText.cwl
inputs:
- id: fast_q
  doc: stores the data in a FASTQ file
  type: string
  inputBinding:
    prefix: -fastq
- id: screen
  doc: displays the reads on the screen
  type: boolean
  inputBinding:
    prefix: -screen
- id: axt
  doc: stores the data in an AXT file
  type: string
  inputBinding:
    prefix: -axt
- id: bam
  doc: stores the data in a BAM file
  type: string
  inputBinding:
    prefix: -bam
- id: bed
  doc: stores the data in a BED file
  type: string
  inputBinding:
    prefix: -bed
- id: el_and
  doc: stores the data in an Eland file
  type: string
  inputBinding:
    prefix: -eland
- id: ref
  doc: displays output for a specific reference
  type: string
  inputBinding:
    prefix: -ref
- id: sam
  doc: stores the data in a SAM file
  type: string
  inputBinding:
    prefix: -sam
- id: screen
  doc: displays the alignments on the screen
  type: boolean
  inputBinding:
    prefix: -screen
- id: u
  doc: limit output to unique reads
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- MosaikText
