class: CommandLineTool
id: virsorter_train_model.cwl
inputs:
- id: in_working_dir
  doc: output directory  [required]
  type: Directory?
  inputBinding:
    prefix: --working-dir
- id: in_viral_ftr_file
  doc: viral genome feature file for training  [required]
  type: File?
  inputBinding:
    prefix: --viral-ftrfile
- id: in_nonviral_ftr_file
  doc: "nonviral genome feature file for training\n[required]"
  type: File?
  inputBinding:
    prefix: --nonviral-ftrfile
- id: in_jobs
  doc: 'number of threads for classier  [default: 2]'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_balanced
  doc: "random undersample the larger to the size of the\nsmaller feature file  [default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --balanced
- id: in_use_cond_a_off
  doc: "Stop using the conda envs (vs2.yaml) that come with\nthis package and use\
    \ what are installed in current\nsystem; Only useful when you want to install\n\
    dependencies on your own with your own prefer\nversions  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --use-conda-off
- id: in_snake_make_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_working_dir
  doc: output directory  [required]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_working_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/virsorter:2.2.1--py_0
cwlVersion: v1.1
baseCommand:
- virsorter
- train-model
