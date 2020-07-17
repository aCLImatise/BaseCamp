class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_stats.pl.cwl
inputs:
- id: input
  doc: -i   File path to read in.
  type: boolean
  inputBinding:
    prefix: -input
- id: output
  doc: -o   File path to output. Defaults to STDOUT.
  type: boolean
  inputBinding:
    prefix: -output
- id: plots
  doc: -p   Folder to contain quality score plots. - not available with '-t'
  type: boolean
  inputBinding:
    prefix: -plots
- id: threads
  doc: Use multiple threads to process the input - warning the complete file is read
    for each thread.
  type: boolean
  inputBinding:
    prefix: -threads
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: -man
- id: version
  doc: Prints the version number and exits.
  type: boolean
  inputBinding:
    prefix: -version
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_stats.pl
