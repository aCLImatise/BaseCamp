class: CommandLineTool
id: ../../../anvi_script_gen_short_reads.cwl
inputs:
- id: output_file_path
  doc: Output FASTA file path
  type: string
  inputBinding:
    prefix: --output-file-path
- id: config_file
  doc: Configuration file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-short-reads
