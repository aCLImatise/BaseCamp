class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sarscov2summary.cwl
inputs:
- id: output
  doc: Write results here
  type: string
  inputBinding:
    prefix: --output
- id: slac
  doc: SLAC results file
  type: string
  inputBinding:
    prefix: --slac
- id: fel
  doc: FEL results file
  type: string
  inputBinding:
    prefix: --fel
- id: meme
  doc: MEME results file
  type: string
  inputBinding:
    prefix: --meme
- id: prime
  doc: PRIME results file
  type: string
  inputBinding:
    prefix: --prime
- id: p_value
  doc: p-value
  type: string
  inputBinding:
    prefix: --pvalue
- id: coordinates
  doc: An alignment with reference sequence (assumed to start with NC)
  type: string
  inputBinding:
    prefix: --coordinates
- id: database
  doc: Primary database record to extract sequence information from
  type: string
  inputBinding:
    prefix: --database
- id: duplicates
  doc: The JSON file recording compressed sequence duplicates
  type: string
  inputBinding:
    prefix: --duplicates
- id: maf
  doc: Also include sites with hapoltype MAF >= this frequency
  type: string
  inputBinding:
    prefix: --MAF
- id: evolutionary_annotation
  doc: If provided use evolutionary likelihood annotation
  type: string
  inputBinding:
    prefix: --evolutionary_annotation
- id: evolutionary_fragment
  doc: Used in conjunction with evolutionary annotation to designate the fragment
    to look up
  type: string
  inputBinding:
    prefix: --evolutionary_fragment
- id: ma_fs
  doc: If provided, write a CSV file with MAF/p-value tables
  type: string
  inputBinding:
    prefix: --mafs
- id: evolutionary_csv
  doc: If provided, write a CSV file with observed/predicted frequncies
  type: string
  inputBinding:
    prefix: --evolutionary_csv
outputs: []
cwlVersion: v1.1
baseCommand:
- sarscov2summary
