class: CommandLineTool
id: phyluce_align_get_trimmed_alignments_from_untrimmed.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to be trimmed. (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: 'The directory in which to store the resulting alignments. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: 'The input alignment format. (default: fasta)'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: window
  doc: 'Sliding window size for trimming. (default: 20)'
  type: string
  inputBinding:
    prefix: --window
- id: proportion
  doc: 'The proportion of taxa required to have sequence at alignment ends. (default:
    0.65)'
  type: string
  inputBinding:
    prefix: --proportion
- id: threshold
  doc: 'The proportion of residues required across the window in proportion of taxa.
    (default: 0.65)'
  type: string
  inputBinding:
    prefix: --threshold
- id: max_divergence
  doc: 'The max proportion of sequence divergence allowed between any row of the alignment
    and the alignment consensus. (default: 0.2)'
  type: long
  inputBinding:
    prefix: --max_divergence
- id: min_length
  doc: 'The minimum length of alignments to keep. (default: 100)'
  type: long
  inputBinding:
    prefix: --min-length
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_trimmed_alignments_from_untrimmed
