class: CommandLineTool
id: msa2prfl.pl.cwl
inputs:
- id: in_width
  doc: 'minimal block width (default: 6)'
  type: long?
  inputBinding:
    prefix: --width
- id: in_alternative_file_containing
  doc: alternative file containing BLOSUM q_ij matrix
  type: File?
  inputBinding:
    prefix: --qij
- id: in_max_entropy
  doc: 'maximal entropy of a block column (default: disabled)'
  type: string?
  inputBinding:
    prefix: --max_entropy
- id: in_keep_empty
  doc: do not remove empty columns from alignment
  type: boolean?
  inputBinding:
    prefix: --keep_empty
- id: in_prefix_from_seq_names
  doc: "MSA contains partial sequences, determine\nsequence offset from sequence name\
    \ as in XXXX/<from>-<to>"
  type: string?
  inputBinding:
    prefix: --prefix_from_seqnames
- id: in_relax
  doc: "consider MSA as partial (allow arbitrary distance at\nbeginning and end)"
  type: boolean?
  inputBinding:
    prefix: --relax
- id: in_block_score_file
  doc: create a log file with blocks from the MSA and their scores
  type: File?
  inputBinding:
    prefix: --blockscorefile
- id: in_setname
  doc: set a name for the profile
  type: string?
  inputBinding:
    prefix: --setname
- id: in_set_desc
  doc: set a description for the profile
  type: string?
  inputBinding:
    prefix: --setdesc
- id: in_set_acc
  doc: set an accession id for the profile
  type: string?
  inputBinding:
    prefix: --setacc
- id: in_info
  doc: provide a text file containing the meta information
  type: File?
  inputBinding:
    prefix: --info
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_uses
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_variable
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_augustus_config_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_protein
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_blosum
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_block
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_subdirectory
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_profile
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_calculate
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_pseudo_counts
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_used
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_clustal
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_which
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_searched
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- msa2prfl.pl
