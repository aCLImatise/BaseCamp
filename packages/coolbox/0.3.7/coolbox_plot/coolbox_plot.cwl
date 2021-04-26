class: CommandLineTool
id: coolbox_plot.cwl
inputs:
- id: in_genome_range
  doc: "=\e[4mGENOME_RANGE\e[0m\nType: Optional[]\nDefault: None\nGenome range string,\
    \ like \"chr9:4000000-6000000\"."
  type: boolean?
  inputBinding:
    prefix: --genome_range
- id: in_genome_range_two
  doc: "=\e[4mGENOME_RANGE2\e[0m\nType: Optional[]\nDefault: None\nGenome range string,\
    \ like \"chr9:4000000-6000000\"."
  type: boolean?
  inputBinding:
    prefix: --genome_range2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- coolbox
- plot
