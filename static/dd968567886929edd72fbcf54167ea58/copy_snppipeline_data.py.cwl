class: CommandLineTool
id: copy_snppipeline_data.py.cwl
inputs:
- id: in_which_data
  doc: 'Which of the supplied data sets to copy.  The choices are:'
  type: string
  inputBinding:
    position: 0
- id: in_lambda_virus_inputs
  doc: ': Input reference and fastq files'
  type: string
  inputBinding:
    position: 1
- id: in_ago_na_inputs
  doc: ': Input reference file'
  type: string
  inputBinding:
    position: 0
- id: in_ago_na_expected_results
  doc: ': Expected results files'
  type: string
  inputBinding:
    position: 1
- id: in_listeria_inputs
  doc: ': Input reference file'
  type: string
  inputBinding:
    position: 2
- id: in_listeria_expected_results
  doc: ': Expected results files'
  type: string
  inputBinding:
    position: 3
- id: in_configuration_file
  doc: ": File of parameters to customize the\nSNP pipeline"
  type: string
  inputBinding:
    position: 4
- id: in_results_dot
  doc: The agona and listeria data sets have the reference genome and
  type: string
  inputBinding:
    position: 0
- id: in_dest_directory
  doc: "Destination directory into which the SNP pipeline data files will be copied.\n\
    The data files are copied into the destination directory if the directory\nalready\
    \ exists.  Otherwise the destination directory is created and the\ndata files\
    \ are copied there.  (default: current directory)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- copy_snppipeline_data.py
