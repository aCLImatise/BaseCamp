class: CommandLineTool
id: createDataSet.cwl
inputs:
- id: x
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: s
  doc: '-- seed random init             (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: '-- percentage of masked data    (default: 0.05)'
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- createDataSet
