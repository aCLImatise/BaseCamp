class: CommandLineTool
id: tracecomp.cwl
inputs:
- id: in_detailed_output_file
  doc: ': detailed output into file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_default_effective_sizes
  doc: "[<every> <until>]. default burnin = 20% of the chain\nmeasure the effective\
    \ sizes and overlap between 95% CI of several independent chains\n"
  type: long?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_detailed_output_file
  doc: ': detailed output into file'
  type: File?
  outputBinding:
    glob: $(inputs.in_detailed_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0
cwlVersion: v1.1
baseCommand:
- tracecomp
