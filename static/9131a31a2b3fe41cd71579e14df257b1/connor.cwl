class: CommandLineTool
id: connor.cwl
inputs:
- id: in_verbose
  doc: print all log messages to console
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: =False. Override validation warnings
  type: boolean
  inputBinding:
    prefix: --force
- id: in_log_file
  doc: ={output_filename}.log. Path to verbose log file
  type: File
  inputBinding:
    prefix: --log_file
- id: in_annotated_output_bam
  doc: path to output BAM containing all original aligns annotated with BAM tags
  type: File
  inputBinding:
    prefix: --annotated_output_bam
- id: in_consensus_freq_threshold
  doc: "=0.6 (0..1.0): Ambiguous base calls at a specific position in a family are\n\
    transformed to either majority base call, or N if the majority percentage\nis\
    \ below this threshold. (Higher threshold results in more Ns in\nconsensus.)"
  type: double
  inputBinding:
    prefix: --consensus_freq_threshold
- id: in_min_family_size_threshold
  doc: "=3 (>=0): families with count of original reads < threshold are excluded\n\
    from the deduplicated output. (Higher threshold is more\nstringent.)"
  type: long
  inputBinding:
    prefix: --min_family_size_threshold
- id: in_umt_distance_threshold
  doc: "=1 (>=0); UMTs equal to or closer than this Hamming distance will be\ncombined\
    \ into a single family. Lower threshold make more families with more\nconsistent\
    \ UMTs; 0 implies UMI must match\nexactly."
  type: long
  inputBinding:
    prefix: --umt_distance_threshold
- id: in_filter_order
  doc: "=count; determines how filters will be ordered in the log\nresults"
  type: string
  inputBinding:
    prefix: --filter_order
- id: in_umt_length
  doc: =6 (>=1); length of UMT
  type: long
  inputBinding:
    prefix: --umt_length
- id: in_input_bam
  doc: path to input BAM
  type: string
  inputBinding:
    position: 0
- id: in_output_bam
  doc: path to deduplicated output BAM
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_annotated_output_bam
  doc: path to output BAM containing all original aligns annotated with BAM tags
  type: File
  outputBinding:
    glob: $(inputs.in_annotated_output_bam)
cwlVersion: v1.1
baseCommand:
- connor
