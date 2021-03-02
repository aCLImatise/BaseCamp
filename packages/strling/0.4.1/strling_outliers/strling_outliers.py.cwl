class: CommandLineTool
id: strling_outliers.py.cwl
inputs:
- id: in_unplaced
  doc: '[--out OUT]'
  type: string[]
  inputBinding:
    prefix: --unplaced
- id: in_genotype_dot_txt
  doc: for all samples produced by
  type: string[]
  inputBinding:
    prefix: -genotype.txt
- id: in_unplaced_dot_txt
  doc: for all samples produced by
  type: string?
  inputBinding:
    prefix: -unplaced.txt
- id: in_out
  doc: "Prefix for all output files (suffix will be STRs.tsv)\n(default: )"
  type: string?
  inputBinding:
    prefix: --out
- id: in_control
  doc: "Input file for median and standard deviation estimates\nat each locus from\
    \ a set of control samples. This file\ncan be produced by this script using the\
    \ emit option.\nIf this option is not set, all samples in the current\nbatch will\
    \ be used as controls by default."
  type: File?
  inputBinding:
    prefix: --control
- id: in_emit
  doc: "Output file for median and standard deviation\nestimates at each locus (tsv)."
  type: File?
  inputBinding:
    prefix: --emit
- id: in_slop
  doc: "Merge loci that are within this many bp of each other\nand have the same repeat\
    \ unit."
  type: string?
  inputBinding:
    prefix: --slop
- id: in_min_clips
  doc: "In the individual sample files, only report loci with\nat least many soft-cliped\
    \ reads in that sample."
  type: long?
  inputBinding:
    prefix: --min_clips
- id: in_min_size
  doc: "In the individual sample files, only report loci with\nat least this allele2_est\
    \ size in that sample.\n"
  type: long?
  inputBinding:
    prefix: --min_size
- id: in_str_ling_dot
  doc: --unplaced UNPLACED [UNPLACED ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_emit
  doc: "Output file for median and standard deviation\nestimates at each locus (tsv)."
  type: File?
  outputBinding:
    glob: $(inputs.in_emit)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/strling:0.4.1--hbeb723e_1
cwlVersion: v1.1
baseCommand:
- strling-outliers.py
