class: CommandLineTool
id: deepbgc_train.cwl
inputs:
- id: inputs
  doc: Training sequences (Pfam TSV) file paths
  type: string
  inputBinding:
    position: 0
- id: model
  doc: Path to JSON model config file
  type: string
  inputBinding:
    prefix: --model
- id: target
  doc: Target column to predict in sequence prediction
  type: string
  inputBinding:
    prefix: --target
- id: output
  doc: Output trained model file path
  type: string
  inputBinding:
    prefix: --output
- id: log
  doc: Progress log output path (e.g. TensorBoard)
  type: string
  inputBinding:
    prefix: --log
- id: classes
  doc: Class TSV file path - train a sequence classifier using provided classes (binary
    columns), indexed by sequence_id column
  type: string
  inputBinding:
    prefix: --classes
- id: config
  doc: CONFIG Variables in model JSON file to replace (e.g. --config PFAM2VEC path/to/pfam2vec.csv)
  type: string
  inputBinding:
    prefix: --config
- id: validation
  doc: Validation sequence file path. Repeat to specify multiple files
  type: string
  inputBinding:
    prefix: --validation
- id: verbose
  doc: 'Verbosity level: 0=none, 1=progress bar, 2=once per epoch (default: 2)'
  type: long
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- deepbgc
- train
