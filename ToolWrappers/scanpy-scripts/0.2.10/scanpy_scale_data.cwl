class: CommandLineTool
id: scanpy_scale_data.cwl
inputs:
- id: in_input_format
  doc: "[anndata|loom]\nInput object format.  [default: anndata]"
  type: boolean?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "[anndata|loom|zarr]\nOutput object format.  [default: anndata]"
  type: boolean?
  inputBinding:
    prefix: --output-format
- id: in_zarr_chunk_size
  doc: Chunk size for writing output in zarr
  type: long?
  inputBinding:
    prefix: --zarr-chunk-size
- id: in_export_mtx
  doc: "When specified, using it as prefix for\nexporting mtx files. If not empty\
    \ and not\nending with \"/\" or \"_\", a \"_\" will be\nappended."
  type: File?
  inputBinding:
    prefix: --export-mtx
- id: in_show_obj
  doc: "[stdout|stderr]      Print output object summary info to\nspecified stream."
  type: boolean?
  inputBinding:
    prefix: --show-obj
- id: in_no_zero_center
  doc: "When set, omit zero-centering variables to\nallow efficient handling of sparse\
    \ input."
  type: boolean?
  inputBinding:
    prefix: --no-zero-center
- id: in_max_value
  doc: "When specified, clip to this value after\nscaling, otherwise do not clip"
  type: double?
  inputBinding:
    prefix: --max-value
- id: in_input_obj
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_obj
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scanpy-scale-data
