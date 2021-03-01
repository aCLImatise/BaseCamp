class: CommandLineTool
id: flye_samtools_cat.cwl
inputs:
- id: in_list_input_bamcram
  doc: list of input BAM/CRAM file names, one per line
  type: File?
  inputBinding:
    prefix: -b
- id: in_copy_header_file
  doc: copy the header from FILE [default is 1st input file]
  type: File?
  inputBinding:
    prefix: -h
- id: in_output_bamcram
  doc: output BAM/CRAM
  type: File?
  inputBinding:
    prefix: -o
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- cat
