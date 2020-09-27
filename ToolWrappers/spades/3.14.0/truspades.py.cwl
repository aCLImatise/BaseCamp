class: CommandLineTool
id: truspades.py.cwl
inputs:
- id: in_h_slash_help
  doc: prints this usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_v_slash_version
  doc: prints version
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_test
  doc: run truSPAdes on toy dataset
  type: boolean
  inputBinding:
    prefix: --test
- id: in_outputdir_directory_store
  doc: <output_dir>    directory to store all the resulting files (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: in_t_slash_threads
  doc: <int>           number of threads
  type: boolean
  inputBinding:
    prefix: -t/--threads
- id: in_continue
  doc: continue interrupted launch
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_construct_dataset
  doc: parse dataset from input folder
  type: boolean
  inputBinding:
    prefix: --construct-dataset
- id: in_input_dir
  doc: <directory>     directory with input data. Note that the directory should contain
    only files with reads. This option can be used several times to provide several
    input directories.
  type: boolean
  inputBinding:
    prefix: --input-dir
- id: in_dataset
  doc: <file>          file with dataset description
  type: boolean
  inputBinding:
    prefix: --dataset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- truspades.py
