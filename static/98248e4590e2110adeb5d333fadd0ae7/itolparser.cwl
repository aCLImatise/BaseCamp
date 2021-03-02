class: CommandLineTool
id: itolparser.cwl
inputs:
- id: in_input
  doc: "Input table with categorical metadata in .tsv format\nunless otherwise specified"
  type: string?
  inputBinding:
    prefix: --input
- id: in_outdir
  doc: Output directory to write files to
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_delimiter
  doc: Field delimiter of input table (e.g. ' ', ',', ';')
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_margin
  doc: "MARGIN\nSize of margin specified in iTOL file"
  type: long?
  inputBinding:
    prefix: --margin
- id: in_strip_width
  doc: "WIDTH\nStrip width specified in iTOL file"
  type: File?
  inputBinding:
    prefix: --stripwidth
- id: in_max_categories
  doc: "\\# CATEGORIES\nMaximum number of categories to not get assigned to\nother"
  type: long?
  inputBinding:
    prefix: --maxcategories
- id: in_ignore
  doc: Comma-separated list of columns to ignore
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_continuous
  doc: "Comma-separated list of columns to parse as continuous\n"
  type: string?
  inputBinding:
    prefix: --continuous
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory to write files to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/itolparser:0.1.6--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- itolparser
