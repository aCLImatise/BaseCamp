class: CommandLineTool
id: gnuplot.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuplot:5.2.3
cwlVersion: v1.1
baseCommand:
- gnuplot
