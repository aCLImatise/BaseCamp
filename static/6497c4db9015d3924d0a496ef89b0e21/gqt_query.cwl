class: CommandLineTool
id: gqt_query.cwl
inputs:
- id: in_d
  doc: \
  type: File?
  inputBinding:
    prefix: -d
- id: in_print_number_resulting
  doc: print number of resulting variants \
  type: long?
  inputBinding:
    prefix: -c
- id: in_genotypes_source_bcfvcf
  doc: genotypes (from the source bcf/vcf)\
  type: string?
  inputBinding:
    prefix: -v
- id: in_direcory_name_remote
  doc: direcory name for remote files (default ./)
  type: string?
  inputBinding:
    prefix: -t
- id: in_b
  doc: (opt.)\
  type: File?
  inputBinding:
    prefix: -B
- id: in_o
  doc: (opt.)\
  type: File?
  inputBinding:
    prefix: -O
- id: in_var_6
  doc: (opt.)\
  type: File?
  inputBinding:
    prefix: -V
- id: in_var_7
  doc: (opt.)\
  type: File?
  inputBinding:
    prefix: -G
- id: in_p
  doc: \
  type: long?
  inputBinding:
    prefix: -p
- id: in_var_9
  doc: \
  type: long?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gqt
- query
