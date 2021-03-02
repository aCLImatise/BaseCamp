class: CommandLineTool
id: srf2fastq.cwl
inputs:
- id: in_use_calibrated_values
  doc: Use calibrated quality values (CNF1)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_ignore_bad_reads
  doc: Ignore bad reads
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_split_fastq_files
  doc: "Split the fastq files, one for each region in the REGN chunk.\nThe files are\
    \ named root_ + the name of the region."
  type: string?
  inputBinding:
    prefix: -s
- id: in_sequentially_display_regions
  doc: "Sequentially display regions rather than append them into\none long read.\
    \ (conflicts with -s)"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ignore_regn_names
  doc: "Ignore REGN names: use region index.\ni.e. root_1, root_2 etc."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_append_region_index
  doc: "Append region index to name\ni.e. name/1, name/2 etc."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_include_explicit_sequence
  doc: "Include explicit sequence: the names of the regions of type 'E'"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_comma_separated_list
  doc: ",2.. In a comma separated list, specify which regions to reverse,\ncounting\
    \ from 1. This will reverse complement the read and\nreverse the quality scores.\
    \ (requires -s or -S)\n"
  type: long?
  inputBinding:
    prefix: -r
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_archive_name
  doc: ''
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
- srf2fastq
