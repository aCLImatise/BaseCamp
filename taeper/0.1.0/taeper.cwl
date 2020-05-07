class: CommandLineTool
id: taeper.cwl
inputs:
- id: input_dir
  doc: Directory where files are located.
  type: string
  inputBinding:
    prefix: --input_dir
- id: index
  doc: Provide a prebuilt index file to skip indexing. Be aware that paths within
    an index file are relative to the current working directory when they were built.
  type: string
  inputBinding:
    prefix: --index
- id: output
  doc: Directory to copy the files to. If not specified, will generate the index file
    only.
  type: string
  inputBinding:
    prefix: --output
- id: scale
  doc: Amount to scale the timing by. i.e scale of 10 will deposit the reads 10x fatser
    than they were generated. (Default = 1.0)
  type: string
  inputBinding:
    prefix: --scale
- id: dump_index
  doc: "Path to save index as. Default is 'taeper_index.npy' in current working directory.\
    \ Note: Paths in the index are relative to the current working directory."
  type: string
  inputBinding:
    prefix: --dump_index
- id: no_index
  doc: Dont write the index list to file. This will mean it needs regenerating for
    this dataset on each run.
  type: boolean
  inputBinding:
    prefix: --no_index
- id: log_level
  doc: '{0,1,2,3,4,5} Level of logging. 0 is none, 5 is for debugging. Default is
    4 which will report info, warnings, errors, and critical information.'
  type: boolean
  inputBinding:
    prefix: --log_level
- id: no_progress_bar
  doc: Do not display progress bar.
  type: boolean
  inputBinding:
    prefix: --no_progress_bar
outputs: []
cwlVersion: v1.1
baseCommand:
- taeper
