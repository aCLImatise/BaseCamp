class: CommandLineTool
id: TOBIAS_ATACorrect.cwl
inputs:
- id: bam
  doc: A .bam-file containing reads to be corrected
  type: string
  inputBinding:
    prefix: --bam
- id: genome
  doc: A .fasta-file containing whole genomic sequence
  type: string
  inputBinding:
    prefix: --genome
- id: peaks
  doc: A .bed-file containing ATAC peak regions
  type: string
  inputBinding:
    prefix: --peaks
- id: regions_in
  doc: 'Input regions for estimating bias (default: regions not in peaks.bed)'
  type: string
  inputBinding:
    prefix: --regions-in
- id: regions_out
  doc: 'Output regions (default: peaks.bed)'
  type: string
  inputBinding:
    prefix: --regions-out
- id: blacklist
  doc: 'Blacklisted regions in .bed-format (default: None)'
  type: string
  inputBinding:
    prefix: --blacklist
- id: extend
  doc: 'Extend output regions with basepairs upstream/downstream (default: 100)'
  type: long
  inputBinding:
    prefix: --extend
- id: split_strands
  doc: Write out tracks per strand
  type: boolean
  inputBinding:
    prefix: --split-strands
- id: norm_off
  doc: Switches off normalization based on number of reads
  type: boolean
  inputBinding:
    prefix: --norm-off
- id: track_off
  doc: '[<track> [<track> ...]] Switch off writing of individual .bigwig-tracks (uncorrected/bias/expected/corrected)'
  type: boolean
  inputBinding:
    prefix: --track-off
- id: k_flank
  doc: 'Flank +/- of cutsite to estimate bias from (default: 12)'
  type: long
  inputBinding:
    prefix: --k_flank
- id: read_shift
  doc: '<int>         Read shift for forward and reverse reads (default: 4 -5)'
  type: long
  inputBinding:
    prefix: --read_shift
- id: bg_shift
  doc: 'Read shift for estimation of background frequencies (default: 100)'
  type: long
  inputBinding:
    prefix: --bg_shift
- id: window
  doc: 'Window size for calculating expected signal (default: 100)'
  type: long
  inputBinding:
    prefix: --window
- id: score_mat
  doc: 'Type of matrix to use for bias estimation (PWM/DWM) (default: DWM)'
  type: string
  inputBinding:
    prefix: --score_mat
- id: prefix
  doc: 'Prefix for output files (default: same as .bam file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: outdir
  doc: 'Output directory for files (default: current working directory)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: cores
  doc: 'Number of cores to use for computation (default: 1)'
  type: long
  inputBinding:
    prefix: --cores
- id: split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long
  inputBinding:
    prefix: --split
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ATACorrect
