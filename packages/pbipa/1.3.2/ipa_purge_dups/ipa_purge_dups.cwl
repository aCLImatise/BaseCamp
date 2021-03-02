class: CommandLineTool
id: ipa_purge_dups.cwl
inputs:
- id: in_str_baselevel_coverage
  doc: STR      base-level coverage file [NULL]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_str_cutoffs_file
  doc: STR      cutoffs file [NULL]
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_int_minimum_fraction
  doc: INT      minimum fraction of haploid/diploid/bad/repetitive bases in a sequence
    [.8]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_int_minimum_alignment
  doc: INT      minimum alignment score [70]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_int_minimum_max
  doc: INT      minimum max match score [200]
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_bool_rounds_chaining
  doc: BOOL     2 rounds chaining [FALSE]
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_int_minimum_matching
  doc: INT      minimum matching bases for chaining [500]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_maximum_chaining
  doc: INT      maximum gap size for chaining [20K]
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_int_maximum_nd
  doc: INT      maximum gap size for 2nd round chaining [50K]
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_int_minimum_chaining
  doc: INT      minimum chaining score for a match [10K]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_maximum_extension
  doc: INT      maximum extension for contig ends [15K]
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_purge_dups
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_paf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa_purge_dups
