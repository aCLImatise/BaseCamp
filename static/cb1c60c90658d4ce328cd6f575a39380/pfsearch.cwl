class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pfsearch.cwl
inputs:
- id: report_optimal_alignment
  doc: ': report optimal alignment for all sequences.'
  type: boolean
  inputBinding:
    prefix: -a
- id: search_complementary_strand
  doc: ': search complementary strand of DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -b
- id: input_sequence_file
  doc: ': input sequence file is in FASTA format.'
  type: boolean
  inputBinding:
    prefix: -f
- id: indicate_highest_number
  doc: ': indicate highest cut-off level (number).'
  type: boolean
  inputBinding:
    prefix: -l
- id: indicate_highest_text
  doc: ': indicate highest cut-off level (text).'
  type: boolean
  inputBinding:
    prefix: -L
- id: report_individual_matches
  doc: ': report individual matches for circular profiles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: use_raw_score
  doc: ': use raw score.'
  type: boolean
  inputBinding:
    prefix: -r
- id: force_profile_disjointness
  doc: ': force profile disjointness to UNIQUE.'
  type: boolean
  inputBinding:
    prefix: -u
- id: value_value_forces
  doc: '<value>: cut-off value. An integer value forces -r. Same as parameter C.'
  type: boolean
  inputBinding:
    prefix: -C
- id: value_set_mode
  doc: '<value>: set the normalization mode to use for the score computation. Overrides
    the profile PRIORITY parameter.'
  type: boolean
  inputBinding:
    prefix: -M
- id: impose_length_limit
  doc: ': impose length limit on sequence description.'
  type: boolean
  inputBinding:
    prefix: -d
- id: using_keywordvalue_pairs
  doc: ': output using the xPSA header (using keyword=value pairs).'
  type: boolean
  inputBinding:
    prefix: -k
- id: adding_sequence_matched
  doc: ': output using the xPSA header adding the sequence matched by itself.'
  type: boolean
  inputBinding:
    prefix: -j
- id: list_sequences_matched
  doc: ': list sequences of the matched regions.'
  type: boolean
  inputBinding:
    prefix: -s
- id: suppress_warnings_stderr
  doc: ': suppress warnings on stderr.'
  type: boolean
  inputBinding:
    prefix: -v
- id: list_alignments_psa
  doc: ': list alignments in PSA format.'
  type: boolean
  inputBinding:
    prefix: -x
- id: list_alignments_human
  doc: ': list alignments in human readable form.'
  type: boolean
  inputBinding:
    prefix: -y
- id: indicate_profile_start
  doc: ': indicate profile start and stop positions.'
  type: boolean
  inputBinding:
    prefix: -z
- id: value_specifies_width
  doc: '<value>: specifies the output width. Same as parameter W.'
  type: boolean
  inputBinding:
    prefix: -W
- id: abcdfhllmmkrsuvwxyz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -abCdfhlLmMkrsuvWxyz
outputs: []
cwlVersion: v1.1
baseCommand:
- pfsearch
