class: CommandLineTool
id: fastacmd.cwl
inputs:
- id: in_database__optionaldefault
  doc: "Database [String]  Optional\ndefault = nr"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_type_fileg_guess
  doc: "Type of file\nG - guess mode (look for protein, then nucleotide)\nT - protein\n\
    F - nucleotide [String]  Optional\ndefault = G"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_commadelimited_search_stringsgis
  doc: "Comma-delimited search string(s).\nGIs, accessions, loci, or fullSeq-id strings\
    \ may be used,\ne.g. 555, AC147927, 'gnl|dbname|tag' [String]  Optional"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_file_optional
  doc: "Input file with GIs/accessions/loci for batch\nretrieval [String]  Optional"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_retrieve_duplicate_accessions
  doc: "Retrieve duplicate accessions [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_line_length_sequence
  doc: "Line length for sequence [Integer]  Optional\ndefault = 80"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_definition_line_contain
  doc: "Definition line should contain target gi only [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_file_optionaldefault
  doc: "Output file [File Out]  Optional\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_ctrlas_nonredundant
  doc: "Use Ctrl-A's as non-redundant defline separator [T/F]  Optional\ndefault =\
    \ F"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_dump_entire_database
  doc: "Dump the entire database as (default is not to dump anything):\n1 FASTA\n\
    2 Gi list\n3 Accession.version list"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_range_extract_startstop
  doc: "Range of sequence to extract (Format: start,stop)\n0 in 'start' refers to\
    \ the beginning of the sequence\n0 in 'stop' refers to the end of the sequence\
    \ [String]  Optional\ndefault = 0,0"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_strand_subsequence_nucleotide
  doc: "Strand on subsequence (nucleotide only): 1 is top, 2 is bottom [Integer]\n\
    default = 1"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_print_taxonomic_information
  doc: "Print taxonomic information for requested sequence(s) [T/F]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_print_database_information
  doc: "Print database information only (overrides all other options) [T/F]\ndefault\
    \ = F"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_retrieve_sequences_pig
  doc: Retrieve sequences with this PIG [Integer]  Optional
  type: boolean?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_optionaldefault
  doc: "Output file [File Out]  Optional\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_optionaldefault)
hints: []
cwlVersion: v1.1
baseCommand:
- fastacmd
