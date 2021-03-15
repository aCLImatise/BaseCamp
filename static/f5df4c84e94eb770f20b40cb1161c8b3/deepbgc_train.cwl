class: CommandLineTool
id: deepbgc_train.cwl
inputs:
- id: in_debug
  doc: Path to JSON model config file
  type: File?
  inputBinding:
    prefix: --debug
- id: in_target
  doc: Target column to predict in sequence prediction
  type: string?
  inputBinding:
    prefix: --target
- id: in_output
  doc: Output trained model file path
  type: File?
  inputBinding:
    prefix: --output
- id: in_log
  doc: Progress log output path (e.g. TensorBoard)
  type: File?
  inputBinding:
    prefix: --log
- id: in_classes
  doc: Class TSV file path - train a sequence classifier using provided classes (binary
    columns), indexed by sequence_id column
  type: File?
  inputBinding:
    prefix: --classes
- id: in_config
  doc: "CONFIG\nVariables in model JSON file to replace (e.g. --config PFAM2VEC path/to/pfam2vec.csv)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_validation
  doc: Validation sequence file path. Repeat to specify multiple files
  type: File?
  inputBinding:
    prefix: --validation
- id: in_verbose
  doc: 'Verbosity level: 0=none, 1=progress bar, 2=once per epoch (default: 2)'
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_inputs
  doc: Training sequences (Pfam TSV) file paths
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output trained model file path
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: Progress log output path (e.g. TensorBoard)
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepbgc:0.1.26--py_0
cwlVersion: v1.1
baseCommand:
- deepbgc
- train
