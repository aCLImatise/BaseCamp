class: CommandLineTool
id: bamfilterrg.py.cwl
inputs:
- id: in_input
  doc: Input BAM file
  type: File?
  inputBinding:
    prefix: --input
- id: in_read_group
  doc: Read group(s) to extract (comma separated)
  type: string?
  inputBinding:
    prefix: --readgroup
- id: in_output_first_alignments
  doc: Output first n alignments and quit
  type: long?
  inputBinding:
    prefix: -n
- id: in_input_sam_format
  doc: Input is SAM format
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_output_bam_format
  doc: Output BAM format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_uncompressed_bam
  doc: Output uncompressed BAM format (implies -b)
  type: boolean?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- bamfilterrg.py
