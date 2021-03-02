class: CommandLineTool
id: sequana_vcf_filter.cwl
inputs:
- id: in_input
  doc: 'input fastq gzipped or not (default: None)'
  type: File?
  inputBinding:
    prefix: --input
- id: in_quality
  doc: 'filter sites below this quality (default: -1)'
  type: long?
  inputBinding:
    prefix: --quality
- id: in_apply_in_del_filter
  doc: 'remove INDELs (default: False)'
  type: boolean?
  inputBinding:
    prefix: --apply-indel-filter
- id: in_apply_dp_four_filter
  doc: "apply DP4 filters. see online doc, vcf_filter section\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --apply-dp4-filter
- id: in_apply_af_one_filter
  doc: "apply AF1 filters. see online doc, vcf_filter section\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --apply-af1-filter
- id: in_minimum_af_one
  doc: 'default to 0.95 (default: 0.95)'
  type: long?
  inputBinding:
    prefix: --minimum-af1
- id: in_minimum_ratio
  doc: 'default to 0.75 (default: 0.75)'
  type: double?
  inputBinding:
    prefix: --minimum-ratio
- id: in_minimum_depth
  doc: 'default to 4 (default: 4)'
  type: long?
  inputBinding:
    prefix: --minimum-depth
- id: in_minimum_depth_strand
  doc: 'default to 2 (default: 2)'
  type: long?
  inputBinding:
    prefix: --minimum_depth-strand
- id: in_filter
  doc: "Provide as many filters as you want. See example above\n(default: [])"
  type: string?
  inputBinding:
    prefix: --filter
- id: in_or
  doc: 'DP>30&<60  # to keep only values in the range [30-60]'
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
- sequana_vcf_filter
