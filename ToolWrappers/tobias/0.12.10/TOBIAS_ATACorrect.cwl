class: CommandLineTool
id: TOBIAS_ATACorrect.cwl
inputs:
- id: in_bam
  doc: A .bam-file containing reads to be corrected
  type: File?
  inputBinding:
    prefix: --bam
- id: in_genome
  doc: A .fasta-file containing whole genomic sequence
  type: File?
  inputBinding:
    prefix: --genome
- id: in_peaks
  doc: A .bed-file containing ATAC peak regions
  type: File?
  inputBinding:
    prefix: --peaks
- id: in_regions_in
  doc: "Input regions for estimating bias (default: regions not\nin peaks.bed)"
  type: string?
  inputBinding:
    prefix: --regions-in
- id: in_regions_out
  doc: 'Output regions (default: peaks.bed)'
  type: string?
  inputBinding:
    prefix: --regions-out
- id: in_blacklist
  doc: 'Blacklisted regions in .bed-format (default: None)'
  type: string?
  inputBinding:
    prefix: --blacklist
- id: in_extend
  doc: "Extend output regions with basepairs\nupstream/downstream (default: 100)"
  type: long?
  inputBinding:
    prefix: --extend
- id: in_split_strands
  doc: Write out tracks per strand
  type: boolean?
  inputBinding:
    prefix: --split-strands
- id: in_norm_off
  doc: Switches off normalization based on number of reads
  type: boolean?
  inputBinding:
    prefix: --norm-off
- id: in_track_off
  doc: "[<track> [<track> ...]]\nSwitch off writing of individual .bigwig-tracks\n\
    (uncorrected/bias/expected/corrected)"
  type: boolean?
  inputBinding:
    prefix: --track-off
- id: in_k_flank
  doc: "Flank +/- of cutsite to estimate bias from (default:\n12)"
  type: long?
  inputBinding:
    prefix: --k_flank
- id: in_read_shift
  doc: '<int>         Read shift for forward and reverse reads (default: 4'
  type: long?
  inputBinding:
    prefix: --read_shift
- id: in_bg_shift
  doc: "Read shift for estimation of background frequencies\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --bg_shift
- id: in_window
  doc: "Window size for calculating expected signal (default:\n100)"
  type: long?
  inputBinding:
    prefix: --window
- id: in_score_mat
  doc: "Type of matrix to use for bias estimation (PWM/DWM)\n(default: DWM)"
  type: string?
  inputBinding:
    prefix: --score_mat
- id: in_prefix
  doc: 'Prefix for output files (default: same as .bam file)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_outdir
  doc: "Output directory for files (default: current working\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_cores
  doc: 'Number of cores to use for computation (default: 1)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long?
  inputBinding:
    prefix: --split
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings,\n2: info, 3: stats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'Prefix for output files (default: same as .bam file)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_outdir
  doc: "Output directory for files (default: current working\ndirectory)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ATACorrect
