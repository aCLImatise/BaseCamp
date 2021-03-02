class: CommandLineTool
id: basenji_gtex_folds.py.cwl
inputs:
- id: in_alt
  doc: 'Statistical test alternative [Default: two-sided]'
  type: string?
  inputBinding:
    prefix: --alt
- id: in_number_crossfold_rounds
  doc: Number of cross-fold rounds [Default:1]
  type: long?
  inputBinding:
    prefix: -c
- id: in_name
  doc: 'SLURM name prefix [Default: test]'
  type: string?
  inputBinding:
    prefix: --name
- id: in_slurm_queue_run
  doc: "SLURM queue on which to run the jobs [Default:\ngtx1080ti]"
  type: long?
  inputBinding:
    prefix: -q
- id: in_reference_directory_statistical
  doc: Reference directory for statistical tests
  type: Directory?
  inputBinding:
    prefix: -r
- id: in_exp_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_params_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_data_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_gtex_folds.py
