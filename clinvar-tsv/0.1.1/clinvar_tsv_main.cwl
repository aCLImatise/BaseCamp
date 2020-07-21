class: CommandLineTool
id: ../../../clinvar_tsv_main.cwl
inputs:
- id: b_three_seven_path
  doc: Path to GRCh37 FAI-indexed FASTA file.
  type: string
  inputBinding:
    prefix: --b37-path
- id: b_three_eight_path
  doc: Path to GRCh38 FAI-indexed FASTA file.
  type: string
  inputBinding:
    prefix: --b38-path
- id: work_dir
  doc: Path to working directory
  type: string
  inputBinding:
    prefix: --work-dir
- id: cores
  doc: Number of cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: debug
  doc: Enables debugging helps
  type: boolean
  inputBinding:
    prefix: --debug
- id: clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: main
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- main
