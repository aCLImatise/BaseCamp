class: CommandLineTool
id: pm4ngs_chipseq.cwl
inputs:
- id: in_sample_sheet
  doc: "Sample sheet CSV file with columns:\nsample_name,file,condition,replicate"
  type: File?
  inputBinding:
    prefix: --sample-sheet
- id: in_config_file
  doc: User configuration file with project description
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_copy_raw_data
  doc: "Copy the raw data defined in the sample table to the\nproject/data/DATASET\
    \ folder\n"
  type: boolean?
  inputBinding:
    prefix: --copy-rawdata
- id: in_generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pm_four_ngs
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_chip_seq
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_analysis
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pm4ngs:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- pm4ngs-chipseq
