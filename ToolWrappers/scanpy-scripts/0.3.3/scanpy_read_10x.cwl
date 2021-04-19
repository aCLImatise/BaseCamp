class: CommandLineTool
id: scanpy_read_10x.cwl
inputs:
- id: in_input_one_zero_x_h_five
  doc: Input 10x data in Cell-Ranger hdf5 format.
  type: File?
  inputBinding:
    prefix: --input-10x-h5
- id: in_input_one_zero_x_mtx
  doc: "Path of input folder containing 10x data in\nmtx format."
  type: Directory?
  inputBinding:
    prefix: --input-10x-mtx
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
- id: in_loom_write_obs_m_var_m
  doc: "Write obsm and varm to the Loom file?\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --loom-write-obsm-varm
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
- id: in_genome
  doc: "Name of the genome group in hdf5 file,\nrequired by \"--input-10x-h5\".  [default:\n\
    hg19]"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_var_names
  doc: "[gene_symbols|gene_ids]\nAttribute to be used as the index of the\nvariable\
    \ table, required by \"--\ninput-10x-mtx\".  [default: gene_symbols]"
  type: boolean?
  inputBinding:
    prefix: --var-names
- id: in_extra_obs
  doc: "Extra cell metadata table, must be tab-\nseparated with a header row and an\
    \ index\ncolumn, and with matched dimension."
  type: File?
  inputBinding:
    prefix: --extra-obs
- id: in_extra_var
  doc: "Extra gene metadata table, must be tab-\nseparated with a header row and an\
    \ index\ncolumn, and with matched dimension."
  type: File?
  inputBinding:
    prefix: --extra-var
- id: in_output_obj
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scanpy-scripts:0.3.3--pyhdfd78af_2
cwlVersion: v1.1
baseCommand:
- scanpy-read-10x
