class: CommandLineTool
id: remove_gaps_msa.cwl
inputs:
- id: in_name_write_sequences
  doc: Name of output file to write sequences to
  type: File
  inputBinding:
    prefix: -o
- id: in_minimum_case_coverage
  doc: Minimum case coverage to keep locus
  type: long
  inputBinding:
    prefix: -p
- id: in_use_bases_ones
  doc: Use all bases, not just uppercase ones
  type: boolean
  inputBinding:
    prefix: -a
- id: in_print_loci_discarded
  doc: Do not print which loci were discarded
  type: boolean
  inputBinding:
    prefix: -q
- id: in_msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_write_sequences
  doc: Name of output file to write sequences to
  type: File
  outputBinding:
    glob: $(inputs.in_name_write_sequences)
cwlVersion: v1.1
baseCommand:
- remove_gaps_msa
