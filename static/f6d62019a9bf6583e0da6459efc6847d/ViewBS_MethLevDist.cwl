class: CommandLineTool
id: ViewBS_MethLevDist.cwl
inputs:
- id: in_verbose
  doc: "[required]\n- Provide the sample information. [Format: methlationfile,samplename]\n\
    It is possible to specify more than one sample pair by using the options\n--sample\
    \ more than once. The methylation information can also be read from\na TEXT file.\
    \ Instead of giving an explicit sample information pairs,\nyou need to write \"\
    file:\" followed by the name of the TEXT file.\nSee details at: https://github.com/readbio/ViewBS"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_region
  doc: "[optional]\n- Restrict the calculation to the regions provided only."
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
- id: in_bin_meth_lev
  doc: "[optional]\n- Bin size to calculate the distribution of methylation level.\
    \ [default: 0.1]"
  type: boolean?
  inputBinding:
    prefix: --binMethLev
- id: in_outdir
  doc: "[optional]\n- Provide the output directory. [default: ./]"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "[optional]\n- Provide prefix for the output file. [default: MethLevDist]"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_height
  doc: "[optional]\n- Height of PDF figure. Unit is cm. [default: 10]"
  type: boolean?
  inputBinding:
    prefix: --height
- id: in_width
  doc: "[optional]\n- Width of PDF figure. Unit is cm. [default: 10]\n"
  type: boolean?
  inputBinding:
    prefix: --width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[optional]\n- Provide the output directory. [default: ./]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: "[optional]\n- Provide prefix for the output file. [default: MethLevDist]"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- ViewBS
- MethLevDist
