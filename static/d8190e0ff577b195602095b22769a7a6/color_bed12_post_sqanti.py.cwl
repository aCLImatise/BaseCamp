class: CommandLineTool
id: color_bed12_post_sqanti.py.cwl
inputs:
- id: in_ok_to_ignore
  doc: 'OK to ignore entries missing in bed file (default: off)'
  type: boolean?
  inputBinding:
    prefix: --ok_to_ignore
- id: in_class_filename
  doc: SQANTI(3) classification filename
  type: string
  inputBinding:
    position: 0
- id: in_be_done_two_filename
  doc: Input BED12 filename (converted from same SQANTI3 input GTF)
  type: long
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- color_bed12_post_sqanti.py
