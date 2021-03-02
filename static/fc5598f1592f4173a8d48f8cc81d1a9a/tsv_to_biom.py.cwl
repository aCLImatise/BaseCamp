class: CommandLineTool
id: tsv_to_biom.py.cwl
inputs:
- id: in_input_tsv
  doc: "This input file contain the abundance and metadata\n(format: TSV)."
  type: File?
  inputBinding:
    prefix: --input-tsv
- id: in_input_multi_affi
  doc: "This input file will contain information about\nmultiple alignements (format:\
    \ TSV). Use this option\nonly if your affiliation has been produced by FROGS."
  type: File?
  inputBinding:
    prefix: --input-multi-affi
- id: in_output_biom
  doc: 'The output abundance file (format: BIOM).'
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "The output sequences file (format: fasta). If\nsequences exist in your input\
    \ TSV."
  type: File?
  inputBinding:
    prefix: --output-fasta
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
- id: out_output_biom
  doc: 'The output abundance file (format: BIOM).'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- tsv_to_biom.py
