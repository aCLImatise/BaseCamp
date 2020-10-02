class: CommandLineTool
id: iu_demultiplex.cwl
inputs:
- id: in_sample_barcode_mapping
  doc: TAB-delimited file of sample-barcode associations
  type: File
  inputBinding:
    prefix: --sample-barcode-mapping
- id: in_r_one
  doc: FASTQ file for R1
  type: long
  inputBinding:
    prefix: --r1
- id: in_r_two
  doc: FASTQ file for R2.
  type: long
  inputBinding:
    prefix: --r2
- id: in_index
  doc: Index file (I1)
  type: File
  inputBinding:
    prefix: --index
- id: in_rev_comp_barcodes
  doc: Reverse-complement barcodes before processing
  type: boolean
  inputBinding:
    prefix: --rev-comp-barcodes
- id: in_output_dir
  doc: "Directory for output storage\n"
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Directory for output storage\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- iu-demultiplex
