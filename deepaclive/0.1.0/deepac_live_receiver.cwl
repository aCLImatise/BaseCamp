class: CommandLineTool
id: deepac_live_receiver.cwl
inputs:
- id: read_length
  doc: Expected read length
  type: string
  inputBinding:
    prefix: --read-length
- id: seq_cycles
  doc: Comma-separated list of sequencing cycles to analyze.
  type: string
  inputBinding:
    prefix: --seq-cycles
- id: format
  doc: Format of temp files. bam or fasta.
  type: string
  inputBinding:
    prefix: --format
- id: barcodes
  doc: 'Comma-separated list of barcodes of samples to analyze. Default: "undetermined"'
  type: string
  inputBinding:
    prefix: --barcodes
- id: command
  doc: DeePaC command to use (switches builtin models).
  type: string
  inputBinding:
    prefix: --command
- id: custom
  doc: Use a custom model.
  type: boolean
  inputBinding:
    prefix: --custom
- id: model
  doc: Model to use. "rapid", "sensitive" or custom .h5 file.
  type: string
  inputBinding:
    prefix: --model
- id: threshold
  doc: Classification threshold.
  type: string
  inputBinding:
    prefix: --threshold
- id: receiver_input
  doc: Receiver input directory.
  type: string
  inputBinding:
    prefix: --receiver-input
- id: receiver_output
  doc: Receiver output directory.
  type: string
  inputBinding:
    prefix: --receiver-output
- id: n_cpus_rec
  doc: Number of cores used by the receiver.
  type: string
  inputBinding:
    prefix: --n-cpus-rec
- id: n_gpus
  doc: Number of GPUs used by the receiver.
  type: string
  inputBinding:
    prefix: --n-gpus
- id: discard_neg
  doc: Don't save predictions for nonpathogenic reads.
  type: boolean
  inputBinding:
    prefix: --discard-neg
outputs: []
cwlVersion: v1.1
baseCommand:
- deepac-live
- receiver
