class: CommandLineTool
id: motif_predict.cwl
inputs:
- id: input_file
  doc: 'Path to a FASTA file. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: model_filename
  doc: 'File name for serialized model object. (default: motif.model)'
  type: string
  inputBinding:
    prefix: --model-filename
- id: output_dir
  doc: 'Path to output directory. (default: out)'
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- motif
- predict
