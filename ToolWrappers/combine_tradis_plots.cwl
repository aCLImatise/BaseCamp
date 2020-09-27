class: CommandLineTool
id: combine_tradis_plots.cwl
inputs:
- id: in_plotfile_file_plots
  doc: '|plotfile   : file with plots to be combined'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_outputdir_name_directory
  doc: '|output_dir : name of directory for output (default: combined)'
  type: Directory
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputdir_name_directory
  doc: '|output_dir : name of directory for output (default: combined)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outputdir_name_directory)
cwlVersion: v1.1
baseCommand:
- combine_tradis_plots
