class: CommandLineTool
id: formatrpsdb.cwl
inputs:
- id: in_title_database_file
  doc: Title for database file [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_file_containing
  doc: Input file containing list of ASN.1 Scoremat filenames [File In]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_logfile_name_formatrpsdblog
  doc: "Logfile name [File Out]  Optional\ndefault = formatrpsdb.log"
  type: File?
  inputBinding:
    prefix: -l
- id: in_create_index_files
  doc: "Create index files for database [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_database_volume_size
  doc: "Database volume size in millions of letters [Integer]  Optional\ndefault =\
    \ 0\nrange from 0 to ?"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_scoremat_files_binary
  doc: "Scoremat files are binary [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_threshold_extending_hits
  doc: "Threshold for extending hits for RPS database [Real]  Optional\ndefault =\
    \ 11.0"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_base_name_same
  doc: Base name of output database (same as input file if not specified) [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_scoremats_contain_frequencies
  doc: "For scoremats that contain only residue frequencies, the scaling factor to\
    \ apply when creating PSSMs [Real]  Optional\ndefault = 100.0"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_gap_opening_penalty
  doc: "The gap opening penalty (if not present in the scoremat) [Integer]  Optional\n\
    default = 11"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_gap_extension_penalty
  doc: "The gap extension penalty (if not present in the scoremat) [Integer]  Optional\n\
    default = 1"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_underlying_score_matrix
  doc: "Underlying score matrix (if not present in the scoremat) [String]  Optional\n\
    default = BLOSUM62\n"
  type: boolean?
  inputBinding:
    prefix: -U
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_logfile_name_formatrpsdblog
  doc: "Logfile name [File Out]  Optional\ndefault = formatrpsdb.log"
  type: File?
  outputBinding:
    glob: $(inputs.in_logfile_name_formatrpsdblog)
hints: []
cwlVersion: v1.1
baseCommand:
- formatrpsdb
