class: CommandLineTool
id: chips_learn.cwl
inputs:
- id: in_bam_file_chip
  doc: ':     BAM file with ChIP reads (.bai index required)'
  type: File?
  inputBinding:
    prefix: -b
- id: in_bed_file_peak
  doc: ':     BED file with peak regions (Homer format or BED format)'
  type: File?
  inputBinding:
    prefix: -p
- id: in_file_type_supported
  doc: ': File type of the input peak file. Only `homer` or `bed` supported.'
  type: File?
  inputBinding:
    prefix: -t
- id: in_prefix_output_files
  doc: ':     Prefix for output files'
  type: string?
  inputBinding:
    prefix: -o
- id: in_index_bed_file
  doc: ':           The index of the BED file column used to score each peak (index
    starting from 1)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_ratio_high_score
  doc: ":         Ratio of high score peaks to ignore\nDefault: 0"
  type: double?
  inputBinding:
    prefix: -r
- id: in_est
  doc: ":        Estimated fragment length\nDefault: 200"
  type: long?
  inputBinding:
    prefix: --est
- id: in_no_scale
  doc: ":          Don't scale peak scores by the max score."
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_scale_outliers
  doc: ':   Set all peaks with scores >2*median score to have binding prob 1. Recommended
    with real data'
  type: boolean?
  inputBinding:
    prefix: --scale-outliers
- id: in_paired
  doc: ":           Loading paired-end reads\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_th_res
  doc: ":    Threshold for peak scores in single-end read length estimation\nDefault:\
    \ 100"
  type: double?
  inputBinding:
    prefix: --thres
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chips:2.3--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- chips
- learn
