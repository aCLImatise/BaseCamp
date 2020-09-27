class: CommandLineTool
id: whamg.cwl
inputs:
- id: in_string_list_include
  doc: "<STRING>  A list of seqids to include or exclude while\nsampling insert and\
    \ depth.  For humans you should\nuse the standard chromosomes 1,2,3...X,Y."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_string_comma_separated
  doc: "<STRING>  Comma separated list of bam files or a file with\none bam (full\
    \ path) per line."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_string_reference_genome
  doc: <STRING>  The reference genome (indexed fasta).
  type: boolean
  inputBinding:
    prefix: -a
- id: in_flag_exits_program
  doc: "<FLAG>    Exits the program after the stats are\ngathered. [false]"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_string_file_write
  doc: <STRING>  File to write graph to (very large output). [false]
  type: File
  inputBinding:
    prefix: -g
- id: in_string_region_format
  doc: '<STRING>  Region in format: seqid:start-end [whole genome]'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_int_mapping_quality
  doc: <INT>     Mapping quality filter [20].
  type: boolean
  inputBinding:
    prefix: -m
- id: in_string_non_standard
  doc: <STRING>  non standard split read tag [SA]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_flag_sample_reads
  doc: <FLAG>    Sample reads until success. [false]
  type: boolean
  inputBinding:
    prefix: -z
- id: in_int_minimum_number
  doc: <INT>     Minimum number of matching bases (both reads).[100]
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_file_write
  doc: <STRING>  File to write graph to (very large output). [false]
  type: File
  outputBinding:
    glob: $(inputs.in_string_file_write)
cwlVersion: v1.1
baseCommand:
- whamg
