#!/usr/bin/env cwl-runner

baseCommand:
- seurat-normalise-data.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-normalise-data.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: Method for normalization. Default is log-normalization (LogNormalize). Can
    be 'CLR' or 'RC' additionally.
  id: normalization_method
  inputBinding:
    prefix: --normalization-method
  type: string
- doc: Sets the scale factor for cell-level normalization.
  id: scale_factor
  inputBinding:
    prefix: --scale-factor
  type: string
- doc: File name in which to store serialized R object of type 'Seurat'.'
  id: output_object_file
  inputBinding:
    prefix: --output-object-file
  type: string
- doc: If performing CLR normalization, normalize across features (1) or cells (2).
  id: margin
  inputBinding:
    prefix: --margin
  type: string
- doc: How many cells should be run in each chunk, will try to split evenly across
    threads
  id: block_size
  inputBinding:
    prefix: --block-size
  type: string
