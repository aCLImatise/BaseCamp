class: CommandLineTool
id: gqt_query.cwl
inputs:
- id: in_print_number_resulting
  doc: print number of resulting variants \
  type: long
  inputBinding:
    prefix: -c
- id: in_genotypes_source_bcfvcf
  doc: genotypes (from the source bcf/vcf)\
  type: string
  inputBinding:
    prefix: -v
- id: in_direcory_name_remote
  doc: direcory name for remote files (default ./)
  type: string
  inputBinding:
    prefix: -t
- id: in_b
  doc: (opt.)\
  type: File
  inputBinding:
    prefix: -B
- id: in_o
  doc: (opt.)\
  type: File
  inputBinding:
    prefix: -O
- id: in_var_5
  doc: (opt.)\
  type: File
  inputBinding:
    prefix: -V
- id: in_g
  doc: (opt.)\
  type: File
  inputBinding:
    prefix: -G
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gqt
- query
