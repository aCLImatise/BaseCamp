class: CommandLineTool
id: easel_alistat.cwl
inputs:
- id: in_use_tabular_line
  doc: ': use tabular output, one line per alignment'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_dna
  doc: ": use DNA alphabet (don't autodetect)"
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ": use RNA alphabet (don't autodetect)"
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_amino
  doc: ": use protein alphabet (don't autodetect)"
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- easel
- alistat
