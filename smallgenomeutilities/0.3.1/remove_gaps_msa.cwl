class: CommandLineTool
id: ../../../remove_gaps_msa.cwl
inputs:
- id: name_write_sequences
  doc: Name of output file to write sequences to
  type: string
  inputBinding:
    prefix: -o
- id: minimum_case_coverage
  doc: Minimum case coverage to keep locus
  type: long
  inputBinding:
    prefix: -p
- id: use_bases_ones
  doc: Use all bases, not just uppercase ones
  type: boolean
  inputBinding:
    prefix: -a
- id: print_loci_discarded
  doc: Do not print which loci were discarded
  type: boolean
  inputBinding:
    prefix: -q
- id: msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_gaps_msa
