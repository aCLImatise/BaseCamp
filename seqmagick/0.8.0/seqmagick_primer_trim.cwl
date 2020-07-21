class: CommandLineTool
id: ../../../seqmagick_primer_trim.cwl
inputs:
- id: reverse_is_rev_comp
  doc: 'Reverse primer is written as the reverse complement of the top strand (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --reverse-is-revcomp
- id: source_format
  doc: 'Alignment format (default: detect from extension'
  type: string
  inputBinding:
    prefix: --source-format
- id: output_format
  doc: 'Alignment format (default: detect from extension'
  type: string
  inputBinding:
    prefix: --output-format
- id: include_primers
  doc: 'Include the primers in the output (default: False)'
  type: boolean
  inputBinding:
    prefix: --include-primers
- id: max_hamming_distance
  doc: 'Maximum Hamming distance between primer and alignment site (default: 1). IUPAC
    ambiguous bases in the primer matching unambiguous bases in the alignment are
    not penalized'
  type: long
  inputBinding:
    prefix: --max-hamming-distance
- id: prune_action
  doc: 'Action to take. Options are trim (trim to the region defined by the two primers,
    decreasing the width of the alignment), or isolate (convert all characters outside
    the primer-defined area to gaps). default: trim'
  type: string
  inputBinding:
    prefix: --prune-action
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- primer-trim
