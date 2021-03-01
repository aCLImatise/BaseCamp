class: CommandLineTool
id: datafunk_add_header_column.cwl
inputs:
- id: in_input_fasta
  doc: Input FASTA
  type: string?
  inputBinding:
    prefix: --input-fasta
- id: in_input_csv_tsv
  doc: Input CSV or TSV
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_output_csv
  doc: Output CSV
  type: string?
  inputBinding:
    prefix: --output-metadata
- id: in_output_fast_a
  doc: Output FASTA
  type: string?
  inputBinding:
    prefix: --output-fasta
- id: in_gi_said
  doc: Input data is from GISAID
  type: boolean?
  inputBinding:
    prefix: --gisaid
- id: in_cog_uk
  doc: Input data is from COG-UK
  type: boolean?
  inputBinding:
    prefix: --cog-uk
- id: in_log
  doc: Log file to use (otherwise uses stdout)
  type: File?
  inputBinding:
    prefix: --log
- id: in_column_name
  doc: "Name of column in metadata corresponding to fasta\nheader"
  type: string?
  inputBinding:
    prefix: --column-name
- id: in_columns
  doc: "List of columns in metadata to parse for string\nmatching with fasta header\n"
  type: string[]
  inputBinding:
    prefix: --columns
- id: in__inputmetadata
  doc: --input-metadata
  type: string
  inputBinding:
    position: 0
- id: in__outputmetadata
  doc: --output-metadata
  type: string
  inputBinding:
    position: 1
- id: in__outputfasta
  doc: --output-fasta
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- add_header_column
