class: CommandLineTool
id: ipa_purge_dups_pbcstat.cwl
inputs:
- id: in_int_maximum_coverage
  doc: INT      maximum coverage [500]
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_float_minimum_mapping
  doc: FLOAT    minimum mapping length ratio [0]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_int_minimum_mapping
  doc: INT      minimum mapping quality [-1]
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_int_flanking_space
  doc: INT      flanking space [0]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_bool_only_use
  doc: BOOL     only use primary alignments [TRUE]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_str_output_directory
  doc: STR      output directory [.]
  type: Directory?
  inputBinding:
    prefix: -O
- id: in_aa_pb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_paf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_str_output_directory
  doc: STR      output directory [.]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_str_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa_purge_dups_pbcstat
