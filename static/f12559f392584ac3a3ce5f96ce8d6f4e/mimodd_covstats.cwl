class: CommandLineTool
id: mimodd_covstats.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)\n"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_cov_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- covstats
