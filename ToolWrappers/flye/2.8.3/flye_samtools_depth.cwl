class: CommandLineTool
id: flye_samtools_depth.cwl
inputs:
- id: in_list_positions_regions
  doc: list of positions or regions
  type: string?
  inputBinding:
    prefix: -b
- id: in_list_input_bam
  doc: list of input BAM filenames, one per line [null]
  type: string?
  inputBinding:
    prefix: -f
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
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_depth
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- depth
