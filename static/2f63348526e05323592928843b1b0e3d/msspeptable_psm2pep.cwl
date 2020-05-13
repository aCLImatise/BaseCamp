class: CommandLineTool
id: msspeptable_psm2pep.cwl
inputs:
- id: i
  doc: Input file of TSV PSM table (MSGF+) format
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
- id: spectra_col
  doc: Specify this column number (first col. is 1) containing PSM table spectrafiles
    (e.g. mzML) if you want to track PSMs when creating peptide tables
  type: string
  inputBinding:
    prefix: --spectracol
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.Isobaric
    quantification values will be removed from the table since they represent PSMs
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: ms1quantcol_pattern
  doc: Unique text pattern to identify precursor quant column in input table.
  type: string
  inputBinding:
    prefix: --ms1quantcolpattern
outputs: []
cwlVersion: v1.1
baseCommand:
- msspeptable
- psm2pep
