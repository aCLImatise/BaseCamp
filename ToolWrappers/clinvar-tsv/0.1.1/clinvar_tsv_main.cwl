class: CommandLineTool
id: clinvar_tsv_main.cwl
inputs:
- id: in_b_three_seven_path
  doc: Path to GRCh37 FAI-indexed FASTA file.
  type: long?
  inputBinding:
    prefix: --b37-path
- id: in_b_three_eight_path
  doc: Path to GRCh38 FAI-indexed FASTA file.
  type: long?
  inputBinding:
    prefix: --b38-path
- id: in_work_dir
  doc: Path to working directory
  type: File?
  inputBinding:
    prefix: --work-dir
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_debug
  doc: Enables debugging helps
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_main
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- main
