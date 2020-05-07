class: CommandLineTool
id: clinvar_tsv_parse_xml.cwl
inputs:
- id: output_multi
  doc: '[--max-rows MAX_ROWS]'
  type: string
  inputBinding:
    prefix: --output-multi
- id: clin_var_xml
  doc: Path to Clinvar XML file.
  type: string
  inputBinding:
    prefix: --clinvar-xml
- id: genome_build
  doc: The genome build this variant is for.
  type: string
  inputBinding:
    prefix: --genome-build
- id: output_single
  doc: Output path for single TSV file.
  type: string
  inputBinding:
    prefix: --output-single
- id: output_multi
  doc: Output path to multi TSV file.
  type: string
  inputBinding:
    prefix: --output-multi
- id: max_rows
  doc: Maximal number of rows to write out; for debugging.
  type: long
  inputBinding:
    prefix: --max-rows
outputs: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- parse_xml
