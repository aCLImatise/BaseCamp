class: CommandLineTool
id: alevin_fry_convert.cwl
inputs:
- id: in_bam
  doc: input SAM/BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_output
  doc: output RAD file
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'number of threads to use for processing [default: 2]'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output RAD file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- alevin-fry
- convert
