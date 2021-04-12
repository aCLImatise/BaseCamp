class: CommandLineTool
id: network_build.cwl
inputs:
- id: in_output
  doc: 'correlation coefficient method (default: spearman)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_log
  doc: '<log, log2 or log10> make a log(x+1) transformation (default: not transform)'
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_thread
  doc: 'cpu cores (default: 2)'
  type: long?
  inputBinding:
    prefix: --thread
- id: in_pval
  doc: 'p value cutoff (default: 0.001)'
  type: long?
  inputBinding:
    prefix: --pval
- id: in_cor
  doc: 'correlation coefficient cutoff (default: 0.1)'
  type: long?
  inputBinding:
    prefix: --cor
- id: in_signed
  doc: 'singed network (default: n)'
  type: string?
  inputBinding:
    prefix: --signed
- id: in_fdr
  doc: 'calculate FDR (default: n)'
  type: string?
  inputBinding:
    prefix: --fdr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- network_build
