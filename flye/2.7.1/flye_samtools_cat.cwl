class: CommandLineTool
id: ../../../flye_samtools_cat.cwl
inputs:
- id: list_file_names
  doc: list of input BAM/CRAM file names, one per line
  type: File
  inputBinding:
    prefix: -b
- id: copy_header_file
  doc: copy the header from FILE [default is 1st input file]
  type: File
  inputBinding:
    prefix: -h
- id: output_bamcram
  doc: output BAM/CRAM
  type: File
  inputBinding:
    prefix: -o
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- cat
