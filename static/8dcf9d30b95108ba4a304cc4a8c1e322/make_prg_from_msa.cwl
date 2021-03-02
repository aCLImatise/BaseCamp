class: CommandLineTool
id: make_prg_from_msa.cwl
inputs:
- id: in_alignment_format
  doc: "Alignment format of MSA, must be a biopython AlignIO\ninput alignment_format.\
    \ See\nhttp://biopython.org/wiki/AlignIO. Default: fasta"
  type: string?
  inputBinding:
    prefix: --alignment_format
- id: in_max_nesting
  doc: "Maximum number of levels to use for nesting. Default:\n5"
  type: long?
  inputBinding:
    prefix: --max_nesting
- id: in_min_match_length
  doc: "Minimum number of consecutive characters which must be\nidentical for a match.\
    \ Default: 7"
  type: long?
  inputBinding:
    prefix: --min_match_length
- id: in_prefix
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_no_overwrite
  doc: Do not overwrite pre-existing prg file with same name
  type: boolean?
  inputBinding:
    prefix: --no_overwrite
- id: in_msa
  doc: "Input file: a multiple sequence alignment in supported\nalignment_format.\
    \ If not in aligned fasta\nalignment_format, use -f to input the alignment_format\n\
    type"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/make_prg:0.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- make_prg
- from_msa
