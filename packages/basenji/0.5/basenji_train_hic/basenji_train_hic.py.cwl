class: CommandLineTool
id: basenji_train_hic.py.cwl
inputs:
- id: in_augment_shifts
  doc: ": Augment training with shifted sequences.\n(default: '0')"
  type: boolean?
  inputBinding:
    prefix: --augment_shifts
- id: in_eval_data
  doc: ": test tfrecord file\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --eval_data
- id: in_metrics_sample
  doc: ": Sample sequence positions for computing metrics.\n(default: '1.0')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --metrics_sample
- id: in_params
  doc: ": Parameter JSON\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --params
- id: in_restore
  doc: ': Restore model and continue training.'
  type: boolean?
  inputBinding:
    prefix: --restore
- id: in_train_data
  doc: ": train tfrecord file\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --train_data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_train_hic.py
