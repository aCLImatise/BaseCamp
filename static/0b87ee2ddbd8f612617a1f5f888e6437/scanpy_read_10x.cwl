class: CommandLineTool
id: scanpy_read_10x.cwl
inputs:
- id: input_10x_h5
  doc: Input 10x data in Cell-Ranger hdf5 format.
  type: File
  inputBinding:
    prefix: --input-10x-h5
- id: input_10x_mtx
  doc: Path of input folder containing 10x data in mtx format.
  type: Directory
  inputBinding:
    prefix: --input-10x-mtx
- id: output_format
  doc: '[anndata|loom|zarr] Output object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --output-format
- id: zarr_chunk_size
  doc: 'Chunk size for writing output in zarr format.  [default: 1000]'
  type: long
  inputBinding:
    prefix: --zarr-chunk-size
- id: export_mtx
  doc: When specified, using it as prefix for exporting mtx files. If not empty and
    not ending with "/" or "_", a "_" will be appended.
  type: File
  inputBinding:
    prefix: --export-mtx
- id: show_obj
  doc: '[stdout|stderr]      Print output object summary info to specified stream.'
  type: boolean
  inputBinding:
    prefix: --show-obj
- id: genome
  doc: 'Name of the genome group in hdf5 file, required by "--input-10x-h5".  [default:
    hg19]'
  type: string
  inputBinding:
    prefix: --genome
- id: var_names
  doc: '[gene_symbols|gene_ids] Attribute to be used as the index of the variable
    table, required by "-- input-10x-mtx".  [default: gene_symbols]'
  type: boolean
  inputBinding:
    prefix: --var-names
- id: extra_obs
  doc: Extra cell metadata table, must be tab- separated with a header row and an
    index column, and with matched dimension.
  type: File
  inputBinding:
    prefix: --extra-obs
- id: extra_var
  doc: Extra gene metadata table, must be tab- separated with a header row and an
    index column, and with matched dimension.
  type: File
  inputBinding:
    prefix: --extra-var
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-read-10x
