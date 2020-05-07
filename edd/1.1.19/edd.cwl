class: CommandLineTool
id: edd.cwl
inputs:
- id: chrom_size
  doc: This must be a tab separated file with two columns. The first column contains
    chromosome names and the second contains the chromosome sizes.
  type: string
  inputBinding:
    position: 0
- id: un_align_able_regions
  doc: bed file marking regions to be excluded from the analysis (such as centromeres).
  type: string
  inputBinding:
    position: 1
- id: ip_bam
  doc: ChIP bam file
  type: string
  inputBinding:
    position: 2
- id: input_bam
  doc: Input/control bam file
  type: string
  inputBinding:
    position: 3
- id: output_dir
  doc: output directory, will be created if not existing.
  type: string
  inputBinding:
    position: 4
- id: gap_penalty
  doc: Leave unspecificed for auto-estimation. Adjusts how sensitive EDD is to heterogeneity
    within domains. Depends on Signal/Noise ratio of source files and on the interests
    of the researcher. A "low" value favors large enriched domains with more heterogeneity.
    A "high" value favors smaller enriched domains devoid of heterogeneity.
  type: string
  inputBinding:
    prefix: --gap-penalty
- id: config_file
  doc: Path to user specified EDD configuration file. See EDD manual section about
    configuration for more information.
  type: string
  inputBinding:
    prefix: --config-file
- id: write_log_ratios
  doc: Write log ratios to file.
  type: boolean
  inputBinding:
    prefix: --write-log-ratios
- id: write_bin_scores
  doc: Write bin scores to file.
  type: boolean
  inputBinding:
    prefix: --write-bin-scores
outputs: []
cwlVersion: v1.1
baseCommand:
- edd
