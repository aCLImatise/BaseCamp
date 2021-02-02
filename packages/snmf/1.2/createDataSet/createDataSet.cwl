class: CommandLineTool
id: createDataSet.cwl
inputs:
- id: in__genotype_file
  doc: -- genotype file (in .geno format)
  type: File
  inputBinding:
    prefix: -x
- id: in__seed_random
  doc: '-- seed random init             (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: in__percentage_masked
  doc: '-- percentage of masked data    (default: 0.05)'
  type: double
  inputBinding:
    prefix: -r
- id: in__output_file
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: File
  outputBinding:
    glob: $(inputs.in__output_file)
cwlVersion: v1.1
baseCommand:
- createDataSet
