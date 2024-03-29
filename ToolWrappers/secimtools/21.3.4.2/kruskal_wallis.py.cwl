class: CommandLineTool
id: kruskal_wallis.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_unique_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --uniqueID
- id: in_group
  doc: Name of the column with groups.
  type: string?
  inputBinding:
    prefix: --group
- id: in_summaries
  doc: Summaries file. TSV format.
  type: File?
  inputBinding:
    prefix: --summaries
- id: in_flags
  doc: Flags file. TSV format.
  type: File?
  inputBinding:
    prefix: --flags
- id: in_volcano
  doc: Volcano plot. PDF Format.
  type: string?
  inputBinding:
    prefix: --volcano
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string?
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- kruskal_wallis.py
