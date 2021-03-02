class: CommandLineTool
id: anvi_script_gen_short_reads.cwl
inputs:
- id: in_output_file_path
  doc: 'Output FASTA file path (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file-path
- id: in_configuration_ini
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_short_reads_fast_a
  doc: '🍺 More on `anvi-script-gen-short-reads`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: 'Output FASTA file path (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-short-reads
