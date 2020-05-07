class: CommandLineTool
id: msspeptable_isoquant.cwl
inputs:
- id: i
  doc: Input file of peptide table format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: quant_file
  doc: File containing isobaric quant data to add to table.
  type: string
  inputBinding:
    prefix: --quantfile
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: q_acc_pattern
  doc: Unique text pattern to identify accession column in table containing quant
    info.
  type: string
  inputBinding:
    prefix: --qaccpattern
outputs: []
cwlVersion: v1.1
baseCommand:
- msspeptable
- isoquant
