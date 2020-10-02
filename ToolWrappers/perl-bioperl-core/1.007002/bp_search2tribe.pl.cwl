class: CommandLineTool
id: bp_search2tribe.pl.cwl
inputs:
- id: in__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File
  inputBinding:
    prefix: -o
- id: in_search_result_format
  doc: "- search result format (blast, fasta)\n(ssearch is fasta format). default\
    \ is blast."
  type: string
  inputBinding:
    prefix: -f
- id: in_weight
  doc: "- Change the default weight for E(0.0) hits\nto VALUE (default=200 (i.e. 1e-200)\
    \ )"
  type: double
  inputBinding:
    prefix: --weight
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File
  outputBinding:
    glob: $(inputs.in__output_filename)
cwlVersion: v1.1
baseCommand:
- bp_search2tribe.pl
