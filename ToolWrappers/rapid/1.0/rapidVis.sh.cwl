class: CommandLineTool
id: rapidVis.sh.cwl
inputs:
- id: in_type
  doc: = stats/Compare - Choose basic statistics, or comparison plots
  type: boolean
  inputBinding:
    prefix: --type
- id: in_out
  doc: '=/path_to_output_directory/ : path to the output directory, directory will
    be created if non-existent'
  type: File
  inputBinding:
    prefix: --out
- id: in_an_not
  doc: ': bed file with regions that should be visualised (Not required for comparison
    plots)'
  type: File
  inputBinding:
    prefix: --annot
- id: in_rapid
  doc: ': set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/)
    or put into PATH variable'
  type: File
  inputBinding:
    prefix: --rapid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '=/path_to_output_directory/ : path to the output directory, directory will
    be created if non-existent'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- rapidVis.sh
