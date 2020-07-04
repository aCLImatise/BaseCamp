class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rtk.cwl
inputs:
- id: path_txt_file
  doc: path to an .txt file (tab delimited) to rarefy
  type: boolean
  inputBinding:
    prefix: -i
- id: path_output_directory
  doc: path to a output directory
  type: boolean
  inputBinding:
    prefix: -o
- id: depth_multiple_comma
  doc: Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times
    the minimal column sum.
  type: boolean
  inputBinding:
    prefix: -d
- id: number_create_measures
  doc: Number of times to create diversity measures. Default is 10.
  type: boolean
  inputBinding:
    prefix: -r
- id: number_rarefied_write
  doc: Number of rarefied tables to write.
  type: boolean
  inputBinding:
    prefix: -w
- id: number_use_default
  doc: 'Number of threads to use. Default: 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: ns
  doc: If set, no temporary files will be used when writing rarefaction tables to
    disk.
  type: boolean
  inputBinding:
    prefix: -ns
outputs: []
cwlVersion: v1.1
baseCommand:
- rtk
