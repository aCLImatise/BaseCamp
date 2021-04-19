class: CommandLineTool
id: ViewBS_BisNonConvRate.cwl
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
- id: in_chrom
  doc: "[required]\n- Chromosome ID that the users want to use to estimate non-conversion\
    \ rate."
  type: boolean?
  inputBinding:
    prefix: --chrom
- id: in_min_depth
  doc: "[optional]\n- Minimum read depth for calculating methylation level. [default:\
    \ 5]"
  type: boolean?
  inputBinding:
    prefix: --minDepth
- id: in_context
  doc: "[optional]\n- Sequence context for calculating non-conversion rate. It is\
    \ possible to specify\nmore than one sample pair by using the option --context\
    \ more than once. [default: CXX]\nCXX means non-conversion rate will be calculated\
    \ based on all the 3 sequence context."
  type: boolean?
  inputBinding:
    prefix: --context
- id: in_maxdepth
  doc: "[optional]\n- Maximum read depth for calculating methylation level. [default:\
    \ 10000]"
  type: boolean?
  inputBinding:
    prefix: --maxDepth
- id: in_outdir
  doc: "[optional]\n- Provide the output directory. [default: ./]"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "[optional]\n- Provide prefix for the output file. [default: GlobalMethLev]"
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
  doc: "[optional]\n- Provide prefix for the output file. [default: GlobalMethLev]"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- ViewBS
- BisNonConvRate
