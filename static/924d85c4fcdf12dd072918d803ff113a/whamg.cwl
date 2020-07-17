class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/whamg.cwl
inputs:
- id: string_list_include
  doc: '<STRING>  A list of seqids to include or exclude while           sampling
    insert and depth.  For humans you should      use the standard chromosomes 1,2,3...X,Y.             '
  type: boolean
  inputBinding:
    prefix: -e
- id: string_comma_separated
  doc: '<STRING>  Comma separated list of bam files or a file with     one bam (full
    path) per line.                       '
  type: boolean
  inputBinding:
    prefix: -f
- id: string_reference_genome
  doc: '<STRING>  The reference genome (indexed fasta).               '
  type: boolean
  inputBinding:
    prefix: -a
- id: flag_exits_program
  doc: '<FLAG>    Exits the program after the stats are                gathered. [false]                                   '
  type: boolean
  inputBinding:
    prefix: -s
- id: string_file_write
  doc: '<STRING>  File to write graph to (very large output). [false] '
  type: boolean
  inputBinding:
    prefix: -g
- id: string_region_format
  doc: '<STRING>  Region in format: seqid:start-end [whole genome]    '
  type: boolean
  inputBinding:
    prefix: -r
- id: int_mapping_filter
  doc: '<INT>     Mapping quality filter [20].                        '
  type: boolean
  inputBinding:
    prefix: -m
- id: string_non_standard
  doc: '<STRING>  non standard split read tag [SA]                    '
  type: boolean
  inputBinding:
    prefix: -i
- id: flag_sample_reads
  doc: '<FLAG>    Sample reads until success. [false]                 '
  type: boolean
  inputBinding:
    prefix: -z
- id: int_minimum_number
  doc: '<INT>     Minimum number of matching bases (both reads).[100] '
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- whamg
