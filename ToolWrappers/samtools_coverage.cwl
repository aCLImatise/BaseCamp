class: CommandLineTool
id: samtools_coverage.cwl
inputs:
- id: in_bam_list
  doc: list of input BAM filenames, one per line
  type: File
  inputBinding:
    prefix: --bam-list
- id: in_min_read_len
  doc: ignore reads shorter than INT bp [0]
  type: long
  inputBinding:
    prefix: --min-read-len
- id: in_min_mq
  doc: base quality threshold [0]
  type: long
  inputBinding:
    prefix: --min-MQ
- id: in_min_bq
  doc: mapping quality threshold [0]
  type: long
  inputBinding:
    prefix: --min-BQ
- id: in_rf
  doc: 'required flags: skip reads with mask bits unset []'
  type: long
  inputBinding:
    prefix: --rf
- id: in_ff
  doc: "filter flags: skip reads with mask bits set\n[UNMAP,SECONDARY,QCFAIL,DUP]"
  type: long
  inputBinding:
    prefix: --ff
- id: in_histogram
  doc: show histogram instead of tabular output
  type: boolean
  inputBinding:
    prefix: --histogram
- id: in_ascii
  doc: show only ASCII characters in histogram
  type: boolean
  inputBinding:
    prefix: --ascii
- id: in_output
  doc: write output to FILE [stdout]
  type: File
  inputBinding:
    prefix: --output
- id: in_no_header
  doc: don't print a header in tabular mode
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_n_bins
  doc: number of bins in histogram [terminal width - 40]
  type: long
  inputBinding:
    prefix: --n-bins
- id: in_region
  doc: 'show specified region. Format: chr:start-end.'
  type: string
  inputBinding:
    prefix: --region
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_verbosity
  doc: Set level of verbosity
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_r_name
  doc: Reference name / chromosome
  type: string
  inputBinding:
    position: 0
- id: in_startpos
  doc: Start position
  type: string
  inputBinding:
    position: 1
- id: in_endpos
  doc: End position (or sequence length)
  type: string
  inputBinding:
    position: 2
- id: in_num_reads
  doc: Number reads aligned to the region (after filtering)
  type: string
  inputBinding:
    position: 3
- id: in_cov_bases
  doc: Number of covered bases with depth >= 1
  type: string
  inputBinding:
    position: 4
- id: in_coverage
  doc: Proportion of covered bases [0..1]
  type: string
  inputBinding:
    position: 5
- id: in_mean_depth
  doc: Mean depth of coverage
  type: string
  inputBinding:
    position: 6
- id: in_mean_base_q
  doc: Mean baseQ in covered region
  type: string
  inputBinding:
    position: 7
- id: in_mean_mapq
  doc: Mean mapQ of selected reads
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to FILE [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- samtools
- coverage
