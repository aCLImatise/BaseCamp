class: CommandLineTool
id: deepac_live_sender.cwl
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
- id: sender_input
  doc: Sender input directory.
  type: string
  inputBinding:
    prefix: --sender-input
- id: sender_output
  doc: Sender output directory.
  type: string
  inputBinding:
    prefix: --sender-output
- id: n_cpus_send
  doc: Number of cores used by the sender.
  type: string
  inputBinding:
    prefix: --n-cpus-send
- id: all
  doc: 'Analyze all reads (default: unmapped only).'
  type: boolean
  inputBinding:
    prefix: --all
- id: mapped
  doc: 'Analyze only MAPPED reads (default: unmapped only).'
  type: boolean
  inputBinding:
    prefix: --mapped
- id: remote
  doc: Remote host and path (with username).
  type: string
  inputBinding:
    prefix: --remote
- id: key
  doc: SSH key.
  type: string
  inputBinding:
    prefix: --key
- id: port
  doc: Port for SFTP connection.
  type: string
  inputBinding:
    prefix: --port
outputs: []
cwlVersion: v1.1
baseCommand:
- deepac-live
- sender
