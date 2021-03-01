class: CommandLineTool
id: predex_annotation.cwl
inputs:
- id: in_threads
  doc: Number of threads (default = 1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fast_a
  doc: Fasta file input
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_gtf
  doc: GTF file input
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/predex:0.9.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- predex
- annotation
