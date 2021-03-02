class: CommandLineTool
id: dumpreads.cwl
inputs:
- id: in_dump_reads_fastq
  doc: Dump reads in fastq format
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_use_sanger_fastq
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long?
  inputBinding:
    prefix: -Q
- id: in_dump_qualities_fasta
  doc: Dump qualities in fasta format instead of sequence
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_use_eids_iids
  doc: Use EIDs for FastA header instead of IIDs
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_display_clear_range
  doc: Display clear range information on FASTA header for TIGR Assembler
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_dump_just_eids
  doc: Dump just the eids listed in file
  type: File?
  inputBinding:
    prefix: -E
- id: in_dump_just_iids
  doc: Dump just the iids listed in file
  type: File?
  inputBinding:
    prefix: -I
- id: in_set_maximum_number
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_minimum_iid_display
  doc: Minimum IID to display (not included) (Default all; not compatible with -e,-E,-I
    options)
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_iid_display
  doc: Maximum IID to display (included) (Default all; not compatible with -e,-E,-I
    options)
  type: long?
  inputBinding:
    prefix: -M
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_dump_reads
  doc: '[options] <bank path>'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dumpreads
