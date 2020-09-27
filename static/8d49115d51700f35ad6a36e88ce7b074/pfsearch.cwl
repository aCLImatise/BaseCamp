class: CommandLineTool
id: pfsearch.cwl
inputs:
- id: in_report_optimal_alignment
  doc: ': report optimal alignment for all sequences.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_search_complementary_strand
  doc: ': search complementary strand of DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_input_sequence_file
  doc: ': input sequence file is in FASTA format.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_indicate_highest_number
  doc: ': indicate highest cut-off level (number).'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_indicate_highest_text
  doc: ': indicate highest cut-off level (text).'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_report_individual_matches
  doc: ': report individual matches for circular profiles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_use_raw_score
  doc: ': use raw score.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_force_profile_disjointness
  doc: ': force profile disjointness to UNIQUE.'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_valuecutoff_value_forces
  doc: "<value>:\ncut-off value. An integer value forces -r. Same as parameter C."
  type: boolean
  inputBinding:
    prefix: -C
- id: in_valueset_normalization_mode
  doc: "<value>:\nset the normalization mode to use for the score computation.\nOverrides\
    \ the profile PRIORITY parameter."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_impose_length_limit
  doc: ': impose length limit on sequence description.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_using_keywordvalue_pairs
  doc: ': output using the xPSA header (using keyword=value pairs).'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_adding_sequence_matched
  doc: ': output using the xPSA header adding the sequence matched by itself.'
  type: boolean
  inputBinding:
    prefix: -j
- id: in_list_sequences_matched
  doc: ': list sequences of the matched regions.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_suppress_warnings_stderr
  doc: ': suppress warnings on stderr.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_list_alignments_psa
  doc: ': list alignments in PSA format.'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_list_alignments_human
  doc: ': list alignments in human readable form.'
  type: boolean
  inputBinding:
    prefix: -y
- id: in_indicate_profile_start
  doc: ': indicate profile start and stop positions.'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_valuespecifies_output_width
  doc: "<value>:\nspecifies the output width. Same as parameter W."
  type: boolean
  inputBinding:
    prefix: -W
- id: in_abcdfhllmmkrsuvwxyz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -abCdfhlLmMkrsuvWxyz
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pfsearch
