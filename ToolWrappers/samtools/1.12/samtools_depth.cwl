class: CommandLineTool
id: samtools_depth.cwl
inputs:
- id: in_list_positions_regions
  doc: list of positions or regions
  type: string?
  inputBinding:
    prefix: -b
- id: in_use_customized_files
  doc: use customized index files
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_list_input_bam
  doc: list of input BAM filenames, one per line [null]
  type: string?
  inputBinding:
    prefix: -f
- id: in_print_file_header
  doc: print a file header
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_read_threshold_ignore
  doc: read length threshold (ignore reads shorter than <int>) [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_coverage_depth
  doc: "maximum coverage depth [8000]. If 0, depth is set to the maximum\ninteger\
    \ value, effectively removing any depth limit."
  type: long?
  inputBinding:
    prefix: -d
- id: in_where_write_output
  doc: where to write output to [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_base_quality_threshold
  doc: base quality threshold [0]
  type: long?
  inputBinding:
    prefix: -q
- id: in_mapping_quality_threshold
  doc: mapping quality threshold [0]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_chrfromto__region
  doc: <chr:from-to>    region
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_remove_specified_flags
  doc: remove the specified flags from the set used to filter out reads
  type: string?
  inputBinding:
    prefix: -g
- id: in_add_specified_flags
  doc: "add the specified flags to the set used to filter out reads\nThe default set\
    \ is UNMAP,SECONDARY,QCFAIL,DUP or 0x704"
  type: long?
  inputBinding:
    prefix: -G
- id: in_include_reads_deletions
  doc: include reads with deletions in depth computation
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_overlapping_section_basesof
  doc: "for the overlapping section of a read pair, count only the bases\nof a single\
    \ read. This option will automatically raise the base quality\nthreshold to at\
    \ least 1."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_verbosity
  doc: Set level of verbosity
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- depth
