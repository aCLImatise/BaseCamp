class: CommandLineTool
id: deepac_live_receiver.cwl
inputs:
- id: in_read_length
  doc: Expected read length
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_seq_cycles
  doc: Comma-separated list of sequencing cycles to analyze.
  type: string?
  inputBinding:
    prefix: --seq-cycles
- id: in_format
  doc: Format of temp files. bam or fasta.
  type: string?
  inputBinding:
    prefix: --format
- id: in_barcodes
  doc: "Comma-separated list of barcodes of samples to\nanalyze. Default: \"undetermined\""
  type: string?
  inputBinding:
    prefix: --barcodes
- id: in_command
  doc: DeePaC command to use (switches builtin models).
  type: string?
  inputBinding:
    prefix: --command
- id: in_custom
  doc: Use a custom model.
  type: boolean?
  inputBinding:
    prefix: --custom
- id: in_model
  doc: Model to use. "rapid", "sensitive" or custom .h5 file.
  type: File?
  inputBinding:
    prefix: --model
- id: in_n_cpus_rec
  doc: 'Number of cores used by the receiver. Default: all'
  type: long?
  inputBinding:
    prefix: --n-cpus-rec
- id: in_gpus
  doc: 'GPU devices to use (comma-separated). Default: all'
  type: string[]
  inputBinding:
    prefix: --gpus
- id: in_threshold
  doc: Classification threshold.
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_receiver_input
  doc: Receiver input directory.
  type: Directory?
  inputBinding:
    prefix: --receiver-input
- id: in_receiver_output
  doc: Receiver output directory.
  type: Directory?
  inputBinding:
    prefix: --receiver-output
- id: in_discard_neg
  doc: Don't save predictions for nonpathogenic reads.
  type: boolean?
  inputBinding:
    prefix: --discard-neg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_receiver_output
  doc: Receiver output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_receiver_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepaclive:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-live
- receiver
