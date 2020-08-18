class: CommandLineTool
id: ../../../dumpreads.cwl
inputs:
- id: dump_reads_fastq
  doc: Dump reads in fastq format
  type: boolean
  inputBinding:
    prefix: -f
- id: use_min_base
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long
  inputBinding:
    prefix: -Q
- id: dump_qualities_fasta
  doc: Dump qualities in fasta format instead of sequence
  type: boolean
  inputBinding:
    prefix: -q
- id: use_eids_fasta
  doc: Use EIDs for FastA header instead of IIDs
  type: boolean
  inputBinding:
    prefix: -e
- id: ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: display_clear_information
  doc: Display clear range information on FASTA header for TIGR Assembler
  type: boolean
  inputBinding:
    prefix: -c
- id: dump_just_eids
  doc: Dump just the eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: dump_just_iids
  doc: Dump just the iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: set_maximum_number
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: string
  inputBinding:
    prefix: -L
- id: minimum_iid_display
  doc: Minimum IID to display (not included) (Default all; not compatible with -e,-E,-I
    options)
  type: string
  inputBinding:
    prefix: -m
- id: maximum_iid_display
  doc: Maximum IID to display (included) (Default all; not compatible with -e,-E,-I
    options)
  type: string
  inputBinding:
    prefix: -M
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: dump_reads
  doc: '[options] <bank path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpreads
