class: CommandLineTool
id: ../../../seqmagick_primer_trim.cwl
inputs:
- id: in_reverse_is_rev_comp
  doc: "Reverse primer is written as the reverse complement of\nthe top strand (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --reverse-is-revcomp
- id: in_source_format
  doc: 'Alignment format (default: detect from extension'
  type: string
  inputBinding:
    prefix: --source-format
- id: in_output_format
  doc: 'Alignment format (default: detect from extension'
  type: string
  inputBinding:
    prefix: --output-format
- id: in_include_primers
  doc: 'Include the primers in the output (default: False)'
  type: boolean
  inputBinding:
    prefix: --include-primers
- id: in_max_hamming_distance
  doc: "Maximum Hamming distance between primer and alignment\nsite (default: 1).\
    \ IUPAC ambiguous bases in the primer\nmatching unambiguous bases in the alignment\
    \ are not\npenalized"
  type: long
  inputBinding:
    prefix: --max-hamming-distance
- id: in_prune_action
  doc: "Action to take. Options are trim (trim to the region\ndefined by the two primers,\
    \ decreasing the width of\nthe alignment), or isolate (convert all characters\n\
    outside the primer-defined area to gaps). default:\ntrim\n"
  type: string
  inputBinding:
    prefix: --prune-action
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqmagick
- primer-trim
