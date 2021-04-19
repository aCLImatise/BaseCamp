class: CommandLineTool
id: ViewBS_MethOneRegion.cwl
inputs:
- id: in_region
  doc: "[required]\n- One target region. [chr1:100-200]"
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_min_depth
  doc: "[optional]\n- Minimum read depth for calculating methylation level. [default:\
    \ 5]"
  type: boolean?
  inputBinding:
    prefix: --minDepth
- id: in_maxdepth
  doc: "[optional]\n- Maximum read depth for calculating methylation level. [default:\
    \ 10000]"
  type: boolean?
  inputBinding:
    prefix: --maxDepth
- id: in_flank
  doc: "[optional]\n- Extend the provided reigons to the flanking regions. [default:\
    \ 400]"
  type: boolean?
  inputBinding:
    prefix: --flank
- id: in_outdir
  doc: "[optional]\n- Output folder. [Default: ./]"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "[optional]\n- Provide prefix for the output file. [Default: MethOneRegion]\n"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_verbose
  doc: '- Suppress extended information or not. [Default: TRUE]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[optional]\n- Output folder. [Default: ./]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: "[optional]\n- Provide prefix for the output file. [Default: MethOneRegion]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- ViewBS
- MethOneRegion
