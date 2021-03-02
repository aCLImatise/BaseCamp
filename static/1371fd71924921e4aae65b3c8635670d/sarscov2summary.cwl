class: CommandLineTool
id: sarscov2summary.cwl
inputs:
- id: in_output
  doc: Write results here
  type: string?
  inputBinding:
    prefix: --output
- id: in_slac
  doc: SLAC results file
  type: File?
  inputBinding:
    prefix: --slac
- id: in_fel
  doc: FEL results file
  type: File?
  inputBinding:
    prefix: --fel
- id: in_meme
  doc: MEME results file
  type: File?
  inputBinding:
    prefix: --meme
- id: in_prime
  doc: PRIME results file
  type: File?
  inputBinding:
    prefix: --prime
- id: in_database
  doc: "Primary database record to extract sequence\ninformation from"
  type: string?
  inputBinding:
    prefix: --database
- id: in_duplicates
  doc: The JSON file recording compressed sequence duplicates
  type: File?
  inputBinding:
    prefix: --duplicates
- id: in_maf
  doc: Also include sites with hapoltype MAF >= this
  type: string?
  inputBinding:
    prefix: --MAF
- id: in_evolutionary_fragment
  doc: "Used in conjunction with evolutionary annotation to\ndesignate the fragment\
    \ to look up"
  type: string?
  inputBinding:
    prefix: --evolutionary_fragment
- id: in_ma_fs
  doc: If provided, write a CSV file with MAF/p-value tables
  type: File?
  inputBinding:
    prefix: --mafs
- id: in_evolutionary_csv
  doc: "If provided, write a CSV file with observed/predicted\nfrequncies\n"
  type: File?
  inputBinding:
    prefix: --evolutionary_csv
- id: in_p_value
  doc: -c COORDINATES, --coordinates COORDINATES
  type: string
  inputBinding:
    position: 0
- id: in_frequency
  doc: -E EVOLUTIONARY_ANNOTATION, --evolutionary_annotation EVOLUTIONARY_ANNOTATION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sarscov2summary
