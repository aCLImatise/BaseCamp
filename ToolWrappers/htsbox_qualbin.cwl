class: CommandLineTool
id: htsbox_qualbin.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_number_records_buffer
  doc: number of records in buffer [1000000]
  type: long
  inputBinding:
    prefix: -n
- id: in_number_of_bins
  doc: number of bins (0, 1, 2, 3 or 7) [2]
  type: long
  inputBinding:
    prefix: -m
- id: in_input_bam_file
  doc: the input is a BAM file
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_uncompressed_b
  doc: output uncompressed BAM (force -b)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_qual_bin
  doc: ''
  type: string
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
cwlVersion: v1.1
baseCommand:
- htsbox
- qualbin
