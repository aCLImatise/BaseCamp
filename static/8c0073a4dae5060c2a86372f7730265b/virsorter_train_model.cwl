class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/virsorter_train_model.cwl
inputs:
- id: working_dir
  doc: output directory  [required]
  type: File
  inputBinding:
    prefix: --working-dir
- id: viral_ftr_file
  doc: viral genome feature file for training  [required]
  type: File
  inputBinding:
    prefix: --viral-ftrfile
- id: nonviral_ftr_file
  doc: nonviral genome feature file for training [required]
  type: File
  inputBinding:
    prefix: --nonviral-ftrfile
- id: jobs
  doc: 'number of threads for classier  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: balanced
  doc: 'random undersample the larger to the size of the smaller feature file  [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --balanced
- id: use_cond_a_off
  doc: 'Stop using the conda envs (vs2.yaml) that come with this package and use what
    are installed in current system; Only useful when you want to install dependencies
    on your own with your own prefer versions  [default: False]'
  type: boolean
  inputBinding:
    prefix: --use-conda-off
- id: snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- virsorter
- train-model
