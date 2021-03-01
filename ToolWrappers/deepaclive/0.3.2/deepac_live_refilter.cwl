class: CommandLineTool
id: deepac_live_refilter.cwl
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
- id: in_threshold
  doc: Classification threshold.
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_fast_a_input
  doc: Receiver input directory.
  type: Directory?
  inputBinding:
    prefix: --fasta-input
- id: in_preds_input
  doc: Comma-separated list of receiver output directories.
  type: string?
  inputBinding:
    prefix: --preds-input
- id: in_re_filter_output
  doc: Refilter output directory.
  type: Directory?
  inputBinding:
    prefix: --refilter-output
- id: in_discard_neg
  doc: Don't save predictions for nonpathogenic reads.
  type: boolean?
  inputBinding:
    prefix: --discard-neg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_re_filter_output
  doc: Refilter output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_re_filter_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepaclive:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-live
- refilter
