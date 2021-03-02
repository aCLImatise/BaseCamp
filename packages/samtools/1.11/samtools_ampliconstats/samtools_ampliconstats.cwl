class: CommandLineTool
id: samtools_ampliconstats.cwl
inputs:
- id: in_required_flag
  doc: "|INT\nOnly include reads with all of the FLAGs present [0x0]"
  type: long?
  inputBinding:
    prefix: --required-flag
- id: in_filter_flag
  doc: "|INT\nOnly include reads with none of the FLAGs present [0xB04]"
  type: long?
  inputBinding:
    prefix: --filter-flag
- id: in_max_amplicons
  doc: Change the maximum number of amplicons permitted [1000]
  type: long?
  inputBinding:
    prefix: --max-amplicons
- id: in_max_amplicon_length
  doc: Change the maximum length of an individual amplicon [1000]
  type: long?
  inputBinding:
    prefix: --max-amplicon-length
- id: in_min_depth
  doc: "...\nMinimum base depth(s) to consider position covered [1]"
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_pos_margin
  doc: Margin of error for matching primer positions [30]
  type: long?
  inputBinding:
    prefix: --pos-margin
- id: in_output
  doc: Specify output file [stdout if unset]
  type: File?
  inputBinding:
    prefix: --output
- id: in_use_sample_name
  doc: Use the sample name from the first @RG header line
  type: boolean?
  inputBinding:
    prefix: --use-sample-name
- id: in_tlen_adjust
  doc: Add/subtract from TLEN; use when clipping but no fixmate step
  type: long?
  inputBinding:
    prefix: --tlen-adjust
- id: in_t_coord_bin
  doc: Bin template start,end positions into multiples of INT[1]
  type: long?
  inputBinding:
    prefix: --tcoord-bin
- id: in_t_coord_min_count
  doc: Minimum template start,end frequency for recording [10]
  type: long?
  inputBinding:
    prefix: --tcoord-min-count
- id: in_depth_bin
  doc: Merge FDP values within +/- FRACTION together.
  type: string?
  inputBinding:
    prefix: --depth-bin
- id: in_input_fmt
  doc: "[,OPT[=VAL]]...\nSpecify input format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --input-fmt
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
- id: in_threads
  doc: "Number of additional threads to use [0]\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_primers_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Specify output file [stdout if unset]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- samtools
- ampliconstats
