class: CommandLineTool
id: iu_demultiplex.cwl
inputs:
- id: sample_barcode_mapping
  doc: TAB-delimited file of sample-barcode associations
  type: File
  inputBinding:
    prefix: --sample-barcode-mapping
- id: r1
  doc: FASTQ file for R1
  type: string
  inputBinding:
    prefix: --r1
- id: r2
  doc: FASTQ file for R2.
  type: string
  inputBinding:
    prefix: --r2
- id: index
  doc: Index file (I1)
  type: string
  inputBinding:
    prefix: --index
- id: rev_comp_barcodes
  doc: Reverse-complement barcodes before processing
  type: boolean
  inputBinding:
    prefix: --rev-comp-barcodes
- id: output_dir
  doc: Directory for output storage
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-demultiplex
