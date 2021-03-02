class: CommandLineTool
id: flye_samtools_sort.cwl
inputs:
- id: in_set_compression_level
  doc: Set compression level, from 0 (uncompressed) to 9 (best)
  type: long?
  inputBinding:
    prefix: -l
- id: in_set_maximum_memory
  doc: Set maximum memory per thread; suffix K/M/G recognized [768M]
  type: long?
  inputBinding:
    prefix: -m
- id: in_sort_read_name
  doc: Sort by read name
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_sort_value_tag
  doc: Sort by value of TAG. Uses position as secondary index (or read name if -n
    is set)
  type: string?
  inputBinding:
    prefix: -t
- id: in_write_final_output
  doc: Write final output to FILE rather than standard output
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_temporary_files
  doc: Write temporary files to PREFIX.nnnn.bam
  type: string?
  inputBinding:
    prefix: -T
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: "Number of additional threads to use [0]\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sort
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_in_dot_bam
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_final_output
  doc: Write final output to FILE rather than standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_write_final_output)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- sort
