class: CommandLineTool
id: createDataSet.cwl
inputs:
- id: in_genotype_file_format
  doc: -- genotype file (in .geno format)
  type: File?
  inputBinding:
    prefix: -x
- id: in__seed_init
  doc: '-- seed random init             (default: random)'
  type: string?
  inputBinding:
    prefix: -s
- id: in_percentage_masked_data
  doc: '-- percentage of masked data    (default: 0.05)'
  type: double?
  inputBinding:
    prefix: -r
- id: in_output_file_formatdefault
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_formatdefault
  doc: '-- output file (in .geno format)(default: input_file_I.geno)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_formatdefault)
hints: []
cwlVersion: v1.1
baseCommand:
- createDataSet
