class: CommandLineTool
id: barcode_filter.py.cwl
inputs:
- id: in_input_fast_a_fn
  doc: The sequence data file to be filtered.
  type: File?
  inputBinding:
    prefix: --input_fasta_fn
- id: in_mapping_fn
  doc: "The mapping file containing the barcodes you want\nfiltered sequenced to contain."
  type: File?
  inputBinding:
    prefix: --mapping_fn
- id: in_quality_fn
  doc: "The quality data file. If you plan to use quality data\nwith split_libraries.py,\
    \ you have to filter the\nquality data as well."
  type: File?
  inputBinding:
    prefix: --quality_fn
- id: in_output_prefix
  doc: The prefix for the output filtered data
  type: string?
  inputBinding:
    prefix: --output_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barcode_filter.py
