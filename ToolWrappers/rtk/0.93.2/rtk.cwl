class: CommandLineTool
id: rtk.cwl
inputs:
- id: in_path_txt_file
  doc: path to an .txt file (tab delimited) to rarefy
  type: boolean
  inputBinding:
    prefix: -i
- id: in_path_output_directory
  doc: path to a output directory
  type: File
  inputBinding:
    prefix: -o
- id: in_depth_multiple_depths
  doc: Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times
    the minimal column sum.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_number_create_measures
  doc: Number of times to create diversity measures. Default is 10.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_number_rarefied_tables
  doc: Number of rarefied tables to write.
  type: boolean
  inputBinding:
    prefix: -w
- id: in_number_use_default
  doc: 'Number of threads to use. Default: 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_ns
  doc: If set, no temporary files will be used when writing rarefaction tables to
    disk.
  type: boolean
  inputBinding:
    prefix: -ns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: path to a output directory
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- rtk
