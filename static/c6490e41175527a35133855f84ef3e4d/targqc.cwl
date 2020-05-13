class: CommandLineTool
id: targqc.cwl
inputs:
- id: down_sample_pairs_num
  doc: If input is FastQ, select N random read pairs from each input set (instead
    of default fraction 0.05).
  type: string
  inputBinding:
    prefix: --downsample-pairs-num
- id: down_sample_fraction
  doc: If input is FastQ, select K% random read pairs from each input set. Default
    is 0.05%. To turn off (align all reads), set --downsample 1
  type: string
  inputBinding:
    prefix: --downsample-fraction
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: reuse
  doc: reuse intermediate non-empty files in the work dir from previous run
  type: boolean
  inputBinding:
    prefix: --reuse
- id: scheduler
  doc: Scheduler to use for ipython parallel
  type: string
  inputBinding:
    prefix: --scheduler
- id: queue
  doc: Scheduler queue to run jobs on, for ipython parallel
  type: string
  inputBinding:
    prefix: --queue
- id: resources
  doc: Cluster specific resources specifications. Can be specified multiple times.
    Supports SGE, Torque, LSF and SLURM parameters.
  type: string
  inputBinding:
    prefix: --resources
- id: re_annotate
  doc: Re-annotate BED file with gene names, even if it's 4 columns or more
  type: boolean
  inputBinding:
    prefix: --reannotate
outputs: []
cwlVersion: v1.1
baseCommand:
- targqc
