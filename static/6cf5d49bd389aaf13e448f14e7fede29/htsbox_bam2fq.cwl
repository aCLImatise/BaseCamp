class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_bam2fq.cwl
inputs:
- id: append_read_name
  doc: append /1 and /2 to the read name
  type: boolean
  inputBinding:
    prefix: -a
- id: output_quality_present
  doc: output quality in the OQ tag if present
  type: boolean
  inputBinding:
    prefix: -O
- id: copy_rg_bc
  doc: copy RG, BC and QT tags to the FASTQ header line
  type: boolean
  inputBinding:
    prefix: -t
- id: write_singleton_reads
  doc: write singleton reads to FILE [assume single-end]
  type: File
  inputBinding:
    prefix: -s
- id: bam_two_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bam2fq
