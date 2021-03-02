class: CommandLineTool
id: flye_samtools_phase.cwl
inputs:
- id: in_block_length
  doc: block length [13]
  type: long?
  inputBinding:
    prefix: -k
- id: in_prefix_bams_output
  doc: prefix of BAMs to output [null]
  type: string?
  inputBinding:
    prefix: -b
- id: in_min_het_phredlod
  doc: min het phred-LOD [37]
  type: long?
  inputBinding:
    prefix: -q
- id: in_min_base_quality
  doc: min base quality in het calling [13]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_max_read_depth
  doc: max read depth [256]
  type: long?
  inputBinding:
    prefix: -D
- id: in_attempt_fix_chimeras
  doc: do not attempt to fix chimeras
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_drop_reads_ambiguous
  doc: drop reads with ambiguous phase
  type: boolean?
  inputBinding:
    prefix: -A
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
  doc: "Reference sequence FASTA FILE [null]\n"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_phase
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
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
- phase
