#!/usr/bin/env cwl-runner

baseCommand:
- edd
class: CommandLineTool
cwlVersion: v1.0
id: edd
inputs:
- doc: This must be a tab separated file with two columns. The first column contains
    chromosome names and the second contains the chromosome sizes.
  id: chrom_size
  inputBinding:
    position: 0
  type: string
- doc: bed file marking regions to be excluded from the analysis (such as centromeres).
  id: un_align_able_regions
  inputBinding:
    position: 1
  type: string
- doc: ChIP bam file
  id: ip_bam
  inputBinding:
    position: 2
  type: string
- doc: Input/control bam file
  id: input_bam
  inputBinding:
    position: 3
  type: string
- doc: output directory, will be created if not existing.
  id: output_dir
  inputBinding:
    position: 4
  type: string
- doc: Leave unspecificed for auto-estimation. Adjusts how sensitive EDD is to heterogeneity
    within domains. Depends on Signal/Noise ratio of source files and on the interests
    of the researcher. A "low" value favors large enriched domains with more heterogeneity.
    A "high" value favors smaller enriched domains devoid of heterogeneity.
  id: gap_penalty
  inputBinding:
    prefix: --gap-penalty
  type: string
- doc: Path to user specified EDD configuration file. See EDD manual section about
    configuration for more information.
  id: config_file
  inputBinding:
    prefix: --config-file
  type: string
- doc: Write log ratios to file.
  id: write_log_ratios
  inputBinding:
    prefix: --write-log-ratios
  type: boolean
- doc: Write bin scores to file.
  id: write_bin_scores
  inputBinding:
    prefix: --write-bin-scores
  type: boolean
