class: CommandLineTool
id: monocle3_reduceDim.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long
  inputBinding:
    prefix: --input-object-format
- id: in_output_object_format
  doc: 'Format of output object. [Default: cds3]'
  type: long
  inputBinding:
    prefix: --output-object-format
- id: in_introspective
  doc: Print introspective information of the output object.
  type: boolean
  inputBinding:
    prefix: --introspective
- id: in_max_components
  doc: The dimensionality of the reduced space. [Default 2]
  type: long
  inputBinding:
    prefix: --max-components
- id: in_reduction_method
  doc: 'The algorithm to use for dimensionality reduction, choose from {UMAP, tSNE,
    PCA, LSI}. [Default: UMAP]'
  type: string
  inputBinding:
    prefix: --reduction-method
- id: in_preprocess_method
  doc: 'The preprocessing method used on the data, choose from {PCA, LSI}. [Default:
    PCA]'
  type: string
  inputBinding:
    prefix: --preprocess-method
- id: in_cores
  doc: 'The number of cores to be used for dimensionality reduction. [Default: 1]'
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbose
  doc: Emit verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_object
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- monocle3
- reduceDim
