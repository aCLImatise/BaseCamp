class: CommandLineTool
id: biom_to_tsv.py.cwl
inputs:
- id: in_input_biom
  doc: 'The abundance file (format: BIOM).'
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: "The sequences file (format: fasta). If you use this\noption the sequences\
    \ will be add in TSV."
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_tsv
  doc: "This output file will contain the abundance and\nmetadata (format: TSV). [Default:\
    \ abundance.tsv]"
  type: File?
  inputBinding:
    prefix: --output-tsv
- id: in_output_multi_affi
  doc: "This output file will contain information about\nmultiple alignements (format:\
    \ TSV). Use this option\nonly if your affiliation has been produced by FROGS."
  type: File?
  inputBinding:
    prefix: --output-multi-affi
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tsv
  doc: "This output file will contain the abundance and\nmetadata (format: TSV). [Default:\
    \ abundance.tsv]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tsv)
- id: out_output_multi_affi
  doc: "This output file will contain information about\nmultiple alignements (format:\
    \ TSV). Use this option\nonly if your affiliation has been produced by FROGS."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_multi_affi)
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- biom_to_tsv.py
