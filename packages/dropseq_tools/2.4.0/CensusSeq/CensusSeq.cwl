class: CommandLineTool
id: CensusSeq.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_bam_dot
  doc: This file can be used as the VCF input file on subsequent runs of the same
    data set
  type: string
  inputBinding:
    position: 0
- id: in_null_dot
  doc: SNP_COVERAGE_HISTOGRAM=File   Output a coverage report for the number of reads
    on each SNP.  Bins SNPs by the number of
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 1
- id: in_chromosomes_dot
  doc: "Default value: [X, Y, MT]. This option can be set to 'null' to clear the"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropseq_tools:2.4.0--0
cwlVersion: v1.1
baseCommand:
- CensusSeq
