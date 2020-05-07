class: CommandLineTool
id: connor.cwl
inputs:
- id: input_bam
  doc: path to input BAM
  type: string
  inputBinding:
    position: 0
- id: output_bam
  doc: path to deduplicated output BAM
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: print all log messages to console
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: =False. Override validation warnings
  type: boolean
  inputBinding:
    prefix: --force
- id: log_file
  doc: ={output_filename}.log. Path to verbose log file
  type: string
  inputBinding:
    prefix: --log_file
- id: annotated_output_bam
  doc: path to output BAM containing all original aligns annotated with BAM tags
  type: string
  inputBinding:
    prefix: --annotated_output_bam
- id: consensus_freq_threshold
  doc: '=0.6 (0..1.0): Ambiguous base calls at a specific position in a family are
    transformed to either majority base call, or N if the majority percentage is below
    this threshold. (Higher threshold results in more Ns in consensus.)'
  type: string
  inputBinding:
    prefix: --consensus_freq_threshold
- id: min_family_size_threshold
  doc: '=3 (>=0): families with count of original reads < threshold are excluded from
    the deduplicated output. (Higher threshold is more stringent.)'
  type: long
  inputBinding:
    prefix: --min_family_size_threshold
- id: umt_distance_threshold
  doc: =1 (>=0); UMTs equal to or closer than this Hamming distance will be combined
    into a single family. Lower threshold make more families with more consistent
    UMTs; 0 implies UMI must match exactly.
  type: string
  inputBinding:
    prefix: --umt_distance_threshold
- id: filter_order
  doc: =count; determines how filters will be ordered in the log results
  type: string
  inputBinding:
    prefix: --filter_order
- id: umt_length
  doc: =6 (>=1); length of UMT
  type: string
  inputBinding:
    prefix: --umt_length
outputs: []
cwlVersion: v1.1
baseCommand:
- connor
