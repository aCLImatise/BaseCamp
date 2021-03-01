class: CommandLineTool
id: monocle3_preprocess.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long?
  inputBinding:
    prefix: --input-object-format
- id: in_output_object_format
  doc: 'Format of output object. [Default: cds3]'
  type: long?
  inputBinding:
    prefix: --output-object-format
- id: in_introspective
  doc: Print introspective information of the output object.
  type: boolean?
  inputBinding:
    prefix: --introspective
- id: in_method
  doc: 'The initial dimension method to use, choose from {PCA, LSI}. [Default: PCA]'
  type: string?
  inputBinding:
    prefix: --method
- id: in_num_dim
  doc: 'The dimensionality of the reduced space. [Default: 50]'
  type: long?
  inputBinding:
    prefix: --num-dim
- id: in_norm_method
  doc: 'Determines how to transform expression values prior to reducing dimensionality,
    choose from {log, size_only}. [Default: log]'
  type: string?
  inputBinding:
    prefix: --norm-method
- id: in_use_genes
  doc: 'Manually subset the gene pool to these genes for dimensionality reduction,
    NULL to skip. [Default: NULL]'
  type: string?
  inputBinding:
    prefix: --use-genes
- id: in_residual_model_formula_str
  doc: 'A string model formula specifying effects to subtract from the data, NULL
    to skip. [Default: NULL]'
  type: string?
  inputBinding:
    prefix: --residual-model-formula-str
- id: in_pseudo_count
  doc: 'Amount to increase expression values before dimensionality reduction. [Default:
    1]'
  type: double?
  inputBinding:
    prefix: --pseudo-count
- id: in_no_scaling
  doc: When this option is NOT set, scale each gene before running trajectory reconstruction.
  type: boolean?
  inputBinding:
    prefix: --no-scaling
- id: in_verbose
  doc: Emit verbose output.
  type: boolean?
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
hints: []
cwlVersion: v1.1
baseCommand:
- monocle3
- preprocess
