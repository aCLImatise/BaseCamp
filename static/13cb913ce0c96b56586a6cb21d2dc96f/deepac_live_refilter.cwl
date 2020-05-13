class: CommandLineTool
id: deepac_live_refilter.cwl
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
- id: threshold
  doc: Classification threshold.
  type: string
  inputBinding:
    prefix: --threshold
- id: fast_a_input
  doc: Receiver input directory.
  type: string
  inputBinding:
    prefix: --fasta-input
- id: preds_input
  doc: Comma-separated list of receiver output directories.
  type: string
  inputBinding:
    prefix: --preds-input
- id: re_filter_output
  doc: Refilter output directory.
  type: string
  inputBinding:
    prefix: --refilter-output
- id: discard_neg
  doc: Don't save predictions for nonpathogenic reads.
  type: boolean
  inputBinding:
    prefix: --discard-neg
outputs: []
cwlVersion: v1.1
baseCommand:
- deepac-live
- refilter
