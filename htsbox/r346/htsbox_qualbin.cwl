class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_qualbin.cwl
inputs:
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: number_records_buffer
  doc: number of records in buffer [1000000]
  type: long
  inputBinding:
    prefix: -n
- id: number_of_bins
  doc: number of bins (0, 1, 2, 3 or 7) [2]
  type: long
  inputBinding:
    prefix: -m
- id: input_bam_file
  doc: the input is a BAM file
  type: boolean
  inputBinding:
    prefix: -b
- id: output_uncompressed_b
  doc: output uncompressed BAM (force -b)
  type: boolean
  inputBinding:
    prefix: -u
- id: qual_bin
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
- qualbin
