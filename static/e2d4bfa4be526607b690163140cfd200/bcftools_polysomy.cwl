class: CommandLineTool
id: bcftools_polysomy.cwl
inputs:
- id: in_output_dir
  doc: restrict to comma-separated list of regions
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_sample
  doc: sample to analyze
  type: string?
  inputBinding:
    prefix: --sample
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_peak_size
  doc: minimum peak size (0-1, larger is stricter) [0.1]
  type: double?
  inputBinding:
    prefix: --peak-size
- id: in_cn_penalty
  doc: penalty for increasing CN (0-1, larger is stricter) [0.7]
  type: double?
  inputBinding:
    prefix: --cn-penalty
- id: in_fit_th
  doc: goodness of fit threshold (>0, smaller is stricter) [3.3]
  type: double?
  inputBinding:
    prefix: --fit-th
- id: in_include_aa
  doc: include the AA peak in CN2 and CN3 evaluation
  type: boolean?
  inputBinding:
    prefix: --include-aa
- id: in_min_fraction
  doc: minimum distinguishable fraction of aberrant cells [0.1]
  type: double?
  inputBinding:
    prefix: --min-fraction
- id: in_peak_symmetry
  doc: peak symmetry threshold (0-1, larger is stricter) [0.5]
  type: double?
  inputBinding:
    prefix: --peak-symmetry
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- polysomy
