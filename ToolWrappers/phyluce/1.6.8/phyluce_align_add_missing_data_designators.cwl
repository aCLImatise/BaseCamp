class: CommandLineTool
id: ../../../phyluce_align_add_missing_data_designators.cwl
inputs:
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --match-count-output
- id: in_alignments
  doc: 'Alignment files to process (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: in_incomplete_matrix
  doc: "The output file for incomplete-matrix records\ngenerated by get_match_counts.py.\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --incomplete-matrix
- id: in_min_tax_a
  doc: 'The minimum number of taxa to keep (default: 3)'
  type: long
  inputBinding:
    prefix: --min-taxa
- id: in_missing_character
  doc: 'The character to use for missing data (default: ?)'
  type: string
  inputBinding:
    prefix: --missing-character
- id: in_verbatim
  doc: "Do not parse species names at all - use them verbatim\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --verbatim
- id: in_input_format
  doc: 'The input alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: in_no_check_missing
  doc: 'Do not check the list of missing loci (default: True)'
  type: boolean
  inputBinding:
    prefix: --no-check-missing
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: --cores
- id: in_var_13
  doc: '[--incomplete-matrix INCOMPLETE_MATRIX]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_incomplete_matrix
  doc: "The output file for incomplete-matrix records\ngenerated by get_match_counts.py.\
    \ (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_incomplete_matrix)
cwlVersion: v1.1
baseCommand:
- phyluce_align_add_missing_data_designators
