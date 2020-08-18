class: CommandLineTool
id: ../../../createDataSet.cwl
inputs:
- id: _genotype_file
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: _seed_random
  doc: '-- seed random init             (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: _percentage_masked
  doc: '-- percentage of masked data    (default: 0.05)'
  type: string
  inputBinding:
    prefix: -r
- id: _output_file
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- createDataSet
