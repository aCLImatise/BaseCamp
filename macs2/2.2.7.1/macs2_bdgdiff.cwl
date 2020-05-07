class: CommandLineTool
id: macs2_bdgdiff.cwl
inputs:
- id: t1
  doc: MACS pileup bedGraph for condition 1. Incompatible with callpeak --SPMR output.
    REQUIRED
  type: string
  inputBinding:
    prefix: --t1
- id: t2
  doc: MACS pileup bedGraph for condition 2. Incompatible with callpeak --SPMR output.
    REQUIRED
  type: string
  inputBinding:
    prefix: --t2
- id: c1
  doc: MACS control lambda bedGraph for condition 1. Incompatible with callpeak --SPMR
    output. REQUIRED
  type: string
  inputBinding:
    prefix: --c1
- id: c2
  doc: MACS control lambda bedGraph for condition 2. Incompatible with callpeak --SPMR
    output. REQUIRED
  type: string
  inputBinding:
    prefix: --c2
- id: cut_off
  doc: 'logLR cutoff. DEFAULT: 3 (likelihood ratio=1000)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: min_len
  doc: 'Minimum length of differential region. Try bigger value to remove small regions.
    DEFAULT: 200'
  type: long
  inputBinding:
    prefix: --min-len
- id: max_gap
  doc: 'Maximum gap to merge nearby differential regions. Consider a wider gap for
    broad marks. Maximum gap should be smaller than minimum length (-g). DEFAULT:
    100'
  type: long
  inputBinding:
    prefix: --max-gap
- id: depth_1
  doc: 'Sequencing depth (# of non-redundant reads in million) for condition 1. It
    will be used together with --d2. See description for --d2 below for how to assign
    them. Default: 1'
  type: string
  inputBinding:
    prefix: --depth1
- id: depth_2
  doc: 'Sequencing depth (# of non-redundant reads in million) for condition 2. It
    will be used together with --d1. DEPTH1 and DEPTH2 will be used to calculate scaling
    factor for each sample, to down-scale larger sample to the level of smaller one.
    For example, while comparing 10 million condition 1 and 20 million condition 2,
    use --d1 10 --d2 20, then pileup value in bedGraph for condition 2 will be divided
    by 2. Default: 1'
  type: string
  inputBinding:
    prefix: --depth2
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: o_prefix
  doc: Output file prefix. Actual files will be named as PREFIX_cond1.bed, PREFIX_cond2.bed
    and PREFIX_common.bed. Mutually exclusive with -o/--ofile.
  type: string
  inputBinding:
    prefix: --o-prefix
- id: o
  doc: 'OFILE OFILE, --ofile OFILE OFILE OFILE Output filenames. Must give three arguments
    in order: 1. file for unique regions in condition 1; 2. file for unique regions
    in condition 2; 3. file for common regions in both conditions. Note: mutually
    exclusive with --o-prefix.'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- bdgdiff
