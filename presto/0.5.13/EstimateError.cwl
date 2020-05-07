class: CommandLineTool
id: EstimateError.py_barcode.cwl
inputs:
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: f
  doc: 'The name of the barcode field. (default: BARCODE)'
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- EstimateError.py
- barcode
