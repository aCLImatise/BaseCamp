class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/shuffleBank.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: common_file_prefix
  doc: Common file prefix to add to the output
  type: string
  inputBinding:
    prefix: -p
- id: dump_contigs_bank
  doc: Dump contigs from the bank (default)
  type: boolean
  inputBinding:
    prefix: -c
- id: dump_reads_bank
  doc: Dump reads from the bank
  type: boolean
  inputBinding:
    prefix: -r
- id: eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: dump_fastq_format
  doc: Dump in fastq format
  type: boolean
  inputBinding:
    prefix: -f
- id: use_min_base
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long
  inputBinding:
    prefix: -Q
- id: ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -a
- id: display_details_header
  doc: Display details on header line
  type: boolean
  inputBinding:
    prefix: -d
- id: set_maximum_number
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: string
  inputBinding:
    prefix: -L
- id: fofn_list_files
  doc: <fofn>      List of files specifying by EID where to write
  type: boolean
  inputBinding:
    prefix: -E
- id: list_files_specifying
  doc: List of files specifying by EID where to write
  type: string
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffleBank
