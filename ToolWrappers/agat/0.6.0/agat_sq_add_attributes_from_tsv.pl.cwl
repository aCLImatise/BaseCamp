class: CommandLineTool
id: agat_sq_add_attributes_from_tsv.pl.cwl
inputs:
- id: in_gff
  doc: 'STRING: Input GTF/GFF file.'
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_tsv
  doc: 'STRING: Input tsv file'
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_csv
  doc: "BOLEAN: Inform the script that the tsv input file is actually a\ncsv (coma-separated)."
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_verbose
  doc: 'BOLEAN: Add verbosity'
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sq_add_attributes_from_tsv_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sq_add_attributes_from_tsv.pl
