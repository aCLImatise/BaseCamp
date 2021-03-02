class: CommandLineTool
id: shuffleBank.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: string?
  inputBinding:
    prefix: -bank
- id: in_common_file_prefix
  doc: Common file prefix to add to the output
  type: File?
  inputBinding:
    prefix: -p
- id: in_dump_contigs_bank
  doc: Dump contigs from the bank (default)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_dump_reads_bank
  doc: Dump reads from the bank
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_eid
  doc: report eids
  type: boolean?
  inputBinding:
    prefix: -eid
- id: in_iid
  doc: report iids (default)
  type: boolean?
  inputBinding:
    prefix: -iid
- id: in_dump_fastq_format
  doc: Dump in fastq format
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_use_sanger_fastq
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long?
  inputBinding:
    prefix: -Q
- id: in_ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_display_details_header
  doc: Display details on header line
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_set_maximum_number
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_fofn_list_specifying
  doc: <fofn>      List of files specifying by EID where to write
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_list_specifying_write
  doc: List of files specifying by EID where to write
  type: string?
  inputBinding:
    prefix: -I
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_common_file_prefix
  doc: Common file prefix to add to the output
  type: File?
  outputBinding:
    glob: $(inputs.in_common_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- shuffleBank
