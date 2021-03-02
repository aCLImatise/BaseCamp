class: CommandLineTool
id: bpcomp.cwl
inputs:
- id: in_only_partitions_max
  doc: ': only partitions with max prob >  cutoff. (default 0.5)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_detailed_output_file
  doc: ': detailed output into file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_ps
  doc: ': postscript output (requires LateX)'
  type: boolean?
  inputBinding:
    prefix: -ps
- id: in_default_build_consensus
  doc: "[<every> <until>]. default burnin = 1/10 of the chain\ncompare bipartition\
    \ frequencies between independent chains\nand build consensus based on merged\
    \ lists of trees\n"
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
- bpcomp
