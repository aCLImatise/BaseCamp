class: CommandLineTool
id: bcov.cwl
inputs:
- id: in_input_msa_file
  doc: ":        Input MSA file in the PSICOV format. A contact score matrix\nis internally\
    \ computed using the PSICOV method (Jones et al., 2012).\nThis option conflicts\
    \ with the -m option. REQUIRED if -m is not set"
  type: File?
  inputBinding:
    prefix: -a
- id: in_read_precomputed_matrix
  doc: ":        Read a pre-computed residue contact score matrix from file. This\n\
    option conflicts with the -c option. REQUIRED if -a is not set"
  type: File?
  inputBinding:
    prefix: -m
- id: in_read_beta_strand
  doc: ':        Read beta strand boundaries from file. REQUIRED.'
  type: File?
  inputBinding:
    prefix: -s
- id: in_write_predicted_map
  doc: ':        Write predicted beta contact map to file. REQUIRED.'
  type: File?
  inputBinding:
    prefix: -c
- id: in_write_predicted_pairing
  doc: ':        Write predicted beta strand pairing to file. REQUIRED.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_minimum_sequence_separation
  doc: ":         Minimum sequence separation for parallel strand pairing.\n0 = no\
    \ threshold. OPTIONAL, default: 6"
  type: long?
  inputBinding:
    prefix: -n
- id: in_verbose_level_default
  doc: ':         Verbose level, 0/1 (default: 0).'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcov
