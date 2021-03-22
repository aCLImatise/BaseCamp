class: CommandLineTool
id: strling_pull_region.cwl
inputs:
- id: in_fast_a
  doc: path to fasta file, only required for cram
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_output_bam
  doc: 'path to output bam (default: extracted.bam)'
  type: File?
  inputBinding:
    prefix: --output-bam
- id: in_bam
  doc: region
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bam
  doc: 'path to output bam (default: extracted.bam)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bam)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/strling:0.4.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- strling
- pull_region
