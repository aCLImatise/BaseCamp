class: CommandLineTool
id: bam_stats.pl.cwl
inputs:
- id: in_input
  doc: -i   File path to read in.
  type: boolean
  inputBinding:
    prefix: -input
- id: in_output
  doc: -o   File path to output. Defaults to STDOUT.
  type: File
  inputBinding:
    prefix: -output
- id: in_plots
  doc: "-p   Folder to contain quality score plots.\n- not available with '-t'"
  type: boolean
  inputBinding:
    prefix: -plots
- id: in_threads
  doc: "Use multiple threads to process the input\n- warning the complete file is\
    \ read for each thread."
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_version
  doc: Prints the version number.
  type: boolean
  inputBinding:
    prefix: -version
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: -o   File path to output. Defaults to STDOUT.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bam_stats.pl
