class: CommandLineTool
id: htsbox_bam2fq.cwl
inputs:
- id: in_append_read_name
  doc: append /1 and /2 to the read name
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_quality_present
  doc: output quality in the OQ tag if present
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_copy_bc_tags
  doc: copy RG, BC and QT tags to the FASTQ header line
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_write_singleton_reads
  doc: write singleton reads to FILE [assume single-end]
  type: File?
  inputBinding:
    prefix: -s
- id: in_bam_two_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bam2fq
