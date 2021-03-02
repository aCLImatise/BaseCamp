class: CommandLineTool
id: scanpy_cli_norm.cwl
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
- id: in_save_raw
  doc: "[yes|no|counts]  Save raw data existing raw data.  [default:\nyes]"
  type: boolean?
  inputBinding:
    prefix: --save-raw
- id: in_no_log_transform
  doc: "When set, do not apply (natural) log\ntransform following normalisation.\n\
    [default: True]"
  type: boolean?
  inputBinding:
    prefix: --no-log-transform
- id: in_normalize_to
  doc: "Normalize per cell nUMI to this number.\n[default: 10000]"
  type: double?
  inputBinding:
    prefix: --normalize-to
- id: in_fraction
  doc: "Only use genes that make up less than this\nfraction of the total count in\
    \ every cell.\nSo only these genes will sum up to the\nnumber specified by --normalize-to.\n\
    [default: 0.9]"
  type: double?
  inputBinding:
    prefix: --fraction
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
- scanpy-cli
- norm
