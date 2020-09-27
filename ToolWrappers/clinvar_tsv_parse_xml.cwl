class: CommandLineTool
id: clinvar_tsv_parse_xml.cwl
inputs:
- id: in_output_multi
  doc: '[--max-rows MAX_ROWS]'
  type: long
  inputBinding:
    prefix: --output-multi
- id: in_clin_var_xml
  doc: Path to Clinvar XML file.
  type: File
  inputBinding:
    prefix: --clinvar-xml
- id: in_genome_build
  doc: The genome build this variant is for.
  type: string
  inputBinding:
    prefix: --genome-build
- id: in_output_single
  doc: Output path for single TSV file.
  type: File
  inputBinding:
    prefix: --output-single
- id: in_max_rows
  doc: Maximal number of rows to write out; for debugging.
  type: long
  inputBinding:
    prefix: --max-rows
- id: in_clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parse_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_single
  doc: Output path for single TSV file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_single)
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- parse_xml
