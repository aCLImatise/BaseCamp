class: CommandLineTool
id: agat_sp_compare_two_BUSCOs.pl.cwl
inputs:
- id: in_fone
  doc: 'STRING: Input busco folder1'
  type: boolean?
  inputBinding:
    prefix: --f1
- id: in_f_two
  doc: 'STRING: Input busco folder2'
  type: boolean?
  inputBinding:
    prefix: --f2
- id: in_verbose
  doc: "Integer: For displaying extra information use -v 1. For\nactivating the verbosity\
    \ in the omniscient parser use -v 66.\n(not recommended)"
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: 'STRING: Output folder.'
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_agat_sp_compare_two_bus_cos_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'STRING: Output folder.'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_sp_compare_two_BUSCOs.pl
