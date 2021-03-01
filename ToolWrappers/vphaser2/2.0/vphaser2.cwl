class: CommandLineTool
id: vphaser2.cwl
inputs:
- id: in__output_directory
  doc: '[output DIR] -- output directory'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_default_pileup_phasing
  doc: '[1 or 2] -- default 1; 1: pileup + phasing; 2: pileup'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_default_alignment_window
  doc: -- default 500; alignment window size
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_ig
  doc: '-- default 0; # of bases to ignore on both end of a read'
  type: boolean?
  inputBinding:
    prefix: -ig
- id: in_delta
  doc: -- default 2; constrain PE distance by delta x fragsize_variation (auto measured
    by program)
  type: boolean?
  inputBinding:
    prefix: -delta
- id: in_ps
  doc: (0, 100] -- default 30; percentage of reads to sample to get stats.
  type: boolean?
  inputBinding:
    prefix: -ps
- id: in_dt
  doc: '[0 or 1] -- default 1; 1: dinucleotide for err prob measure; 0: not'
  type: boolean?
  inputBinding:
    prefix: -dt
- id: in_cy
  doc: '[0 or 1] -- default 1; 1: read cycle for err calibr; 0: not'
  type: boolean?
  inputBinding:
    prefix: -cy
- id: in_mp
  doc: '[0 or 1] -- default 1; 1: mate-pair for err calibr; 0: not'
  type: boolean?
  inputBinding:
    prefix: -mp
- id: in_qual
  doc: '[0, 40] -- default 20; quantile of qual for err calibr'
  type: boolean?
  inputBinding:
    prefix: -qual
- id: in_default_significance_value
  doc: -- default 0.05; significance value for stat test
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_v_phaser_two
  doc: -i  [input.bam] -- input sorted bam file
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_directory
  doc: '[output DIR] -- output directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in__output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- vphaser2
