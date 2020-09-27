class: CommandLineTool
id: radsex_map.cwl
inputs:
- id: in_markers_file
  doc: TEXT:FILE                 Path to a set of markers to align, either a depth
    table from "process", "signif", or "subset" or a fasta file from "subset" or "signif"    [REQUIRED]
  type: boolean
  inputBinding:
    prefix: --markers-file
- id: in_output_file
  doc: TEXT                      Path to the output file (mapping position, group
    bias, and probability of association with group for all aligned markers)                  [REQUIRED]
  type: File
  inputBinding:
    prefix: --output-file
- id: in_pop_map
  doc: TEXT:FILE                 Path to a tabulated file specifying groups for all
    individuals (population map)                                                            [REQUIRED]
  type: boolean
  inputBinding:
    prefix: --popmap
- id: in_genome_file
  doc: TEXT:FILE                 Path to the genome file in fasta format                                                                                                    [REQUIRED]
  type: boolean
  inputBinding:
    prefix: --genome-file
- id: in_min_depth
  doc: UINT:INT in [1 - 9999]    Minimum depth to consider a marker present in an
    individual                                                                                [1]
  type: boolean
  inputBinding:
    prefix: --min-depth
- id: in_groups
  doc: TEXT                      Names of the groups to compare if there are more
    than two groups in the popmap (--groups group1,group2)
  type: boolean
  inputBinding:
    prefix: --groups
- id: in_min_quality
  doc: UINT:INT in [0 - 60]      Minimum mapping quality to retain a read                                                                                                   [20]
  type: boolean
  inputBinding:
    prefix: --min-quality
- id: in_min_frequency
  doc: FLOAT:FLOAT in [0 - 1]    Minimum frequency of individuals to retain a marker                                                                                        [0.1]
  type: boolean
  inputBinding:
    prefix: --min-frequency
- id: in_sign_if_threshold
  doc: FLOAT:FLOAT in [0 - 1]    P-value threshold to consider a marker significantly
    associated with a phenotypic group                                                    [0.05]
  type: boolean
  inputBinding:
    prefix: --signif-threshold
- id: in_disable_correction
  doc: If set, Bonferroni correction will NOT be used when assessing significance
    of association with phenotypic group
  type: boolean
  inputBinding:
    prefix: --disable-correction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT                      Path to the output file (mapping position, group
    bias, and probability of association with group for all aligned markers)                  [REQUIRED]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- radsex
- map
