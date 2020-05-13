class: CommandLineTool
id: filtlong.cwl
inputs:
- id: input_reads
  doc: input long reads to be filtered
  type: string
  inputBinding:
    position: 0
- id: t
  doc: '[int], --target_bases [int]          keep only the best reads up to this many
    total bases'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: '[float], --keep_percent [float]      keep only this percentage of the best
    reads (measured by bases)'
  type: boolean
  inputBinding:
    prefix: -p
- id: min_length
  doc: '[int]                     minimum length threshold'
  type: boolean
  inputBinding:
    prefix: --min_length
- id: min_mean_q
  doc: '[float]                   minimum mean quality threshold'
  type: boolean
  inputBinding:
    prefix: --min_mean_q
- id: min_window_q
  doc: '[float]                 minimum window quality threshold'
  type: boolean
  inputBinding:
    prefix: --min_window_q
- id: length_weight
  doc: '[float]                weight given to the length score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --length_weight
- id: mean_q_weight
  doc: '[float]                weight given to the mean quality score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --mean_q_weight
- id: window_q_weight
  doc: '[float]              weight given to the window quality score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --window_q_weight
- id: trim
  doc: trim non-k-mer-matching bases from start/end of reads
  type: boolean
  inputBinding:
    prefix: --trim
- id: split
  doc: '[split]                        split reads at this many (or more) consecutive
    non-k-mer-matching bases'
  type: boolean
  inputBinding:
    prefix: --split
- id: window_size
  doc: '[int]                    size of sliding window used when measuring window
    quality (default: 250)'
  type: boolean
  inputBinding:
    prefix: --window_size
- id: verbose
  doc: verbose output to stderr with info for each read
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- filtlong
