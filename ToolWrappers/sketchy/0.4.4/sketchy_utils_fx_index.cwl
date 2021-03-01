class: CommandLineTool
id: sketchy_utils_fx_index.cwl
inputs:
- id: in_fast_x
  doc: "Path to Fast{a,q} input file to index reads from headers\n[required]"
  type: File?
  inputBinding:
    prefix: --fastx
- id: in_sort_by
  doc: "Sort read index by column: runid, sampleid, barcode,\nname, start_time [start_time]"
  type: string?
  inputBinding:
    prefix: --sort_by
- id: in_output
  doc: "Output sorted read index to tab-delimited file\n[read_index.tsv]"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output sorted read index to tab-delimited file\n[read_index.tsv]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-index
