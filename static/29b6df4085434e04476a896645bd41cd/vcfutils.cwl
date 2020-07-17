class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfutils.pl_vcf2fq.cwl
inputs:
- id: minimum_depth_
  doc: minimum depth          [3]
  type: long
  inputBinding:
    prefix: -d
- id: maximum_depth_
  doc: maximum depth          [100000]
  type: long
  inputBinding:
    prefix: -D
- id: min_rms_mapq
  doc: min RMS mapQ           [10]
  type: long
  inputBinding:
    prefix: -Q
- id: indel_filtering_window
  doc: INDEL filtering window [5]
  type: long
  inputBinding:
    prefix: -l
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: vcf_utils_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfutils.pl
- vcf2fq
