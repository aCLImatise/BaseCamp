class: CommandLineTool
id: datafunk_bootstrap.cwl
inputs:
- id: in_input_fast_a
  doc: Alignment in fasta format to bootstrap
  type: string?
  inputBinding:
    prefix: --input-fasta
- id: in_output_prefix
  doc: Prefix for output files (default is "bootstrap_")
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_number_generate_default
  doc: Number of bootstraps to generate (default is 1)
  type: long?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- bootstrap
