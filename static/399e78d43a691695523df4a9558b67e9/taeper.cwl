class: CommandLineTool
id: taeper.cwl
inputs:
- id: in_input_dir
  doc: Directory where files are located.
  type: Directory?
  inputBinding:
    prefix: --input_dir
- id: in_index
  doc: "Provide a prebuilt index file to skip indexing. Be\naware that paths within\
    \ an index file are relative to\nthe current working directory when they were\
    \ built."
  type: File?
  inputBinding:
    prefix: --index
- id: in_output
  doc: "Directory to copy the files to. If not specified, will\ngenerate the index\
    \ file only."
  type: File?
  inputBinding:
    prefix: --output
- id: in_scale
  doc: "Amount to scale the timing by. i.e scale of 10 will\ndeposit the reads 10x\
    \ fatser than they were generated.\n(Default = 1.0)"
  type: double?
  inputBinding:
    prefix: --scale
- id: in_dump_index
  doc: "Path to save index as. Default is 'taeper_index.npy'\nin current working directory.\
    \ Note: Paths in the index\nare relative to the current working directory."
  type: File?
  inputBinding:
    prefix: --dump_index
- id: in_no_index
  doc: "Dont write the index list to file. This will mean it\nneeds regenerating for\
    \ this dataset on each run."
  type: boolean?
  inputBinding:
    prefix: --no_index
- id: in_log_level
  doc: "Level of logging. 0 is none, 5 is for debugging.\nDefault is 4 which will\
    \ report info, warnings, errors,\nand critical information."
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_no_progress_bar
  doc: Do not display progress bar.
  type: boolean?
  inputBinding:
    prefix: --no_progress_bar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taeper
