class: CommandLineTool
id: qcSTR.cwl
inputs:
- id: in_vcf
  doc: VCF file to analyze.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_out
  doc: Output prefix for files generated
  type: string
  inputBinding:
    prefix: --out
- id: in_vcf_type
  doc: "Which type of VCF to restrict the input to, or 'auto'\nfor no restrction (default:\
    \ auto)"
  type: string
  inputBinding:
    prefix: --vcftype
- id: in_samples
  doc: File containing list of samples to include
  type: File
  inputBinding:
    prefix: --samples
- id: in_period
  doc: Only consider repeats with this motif length
  type: long
  inputBinding:
    prefix: --period
- id: in_quality
  doc: "Which quality plot(s) to produce. May be specified\nmore than once. See the\
    \ README for more info (default:\n[])"
  type: string
  inputBinding:
    prefix: --quality
- id: in_quality_ignore_no_call
  doc: "Exclude no-calls from quality graph distributions\ninstead of the default,\
    \ which is to include them as\nzero quality calls. Setting this can cause the\n\
    plotting to crash if it reduces the number of valid\ncalls (in a strata) to <=\
    \ 1 (default: False)"
  type: boolean
  inputBinding:
    prefix: --quality-ignore-no-call
- id: in_ref_bias_metric
  doc: "Which metric to use for the y-axis on the reference\nbias plot. (default:\
    \ mean)"
  type: string
  inputBinding:
    prefix: --refbias-metric
- id: in_ref_bias_min_gts
  doc: "Don't compute points for the reference bias plot based\non fewer than this\
    \ many genotypes (default: 100)"
  type: long
  inputBinding:
    prefix: --refbias-mingts
- id: in_ref_bias_x_range_min
  doc: "Minimum x-axis value (bp) to show on the reference\nbias plot (default: 0)"
  type: long
  inputBinding:
    prefix: --refbias-xrange-min
- id: in_ref_bias_x_range_max
  doc: "Maximum x-axis value (bp) to show on the reference\nbias plot (default: 100)"
  type: long
  inputBinding:
    prefix: --refbias-xrange-max
- id: in_ref_bias_binsize
  doc: "Size (bp) of x-axis bins for the reference bias plot\n(default: 5)"
  type: long
  inputBinding:
    prefix: --refbias-binsize
- id: in_num_records
  doc: Only process this many records
  type: long
  inputBinding:
    prefix: --numrecords
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_generating
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_various
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_qc
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_plots
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_tr
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_call_sets
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcSTR
