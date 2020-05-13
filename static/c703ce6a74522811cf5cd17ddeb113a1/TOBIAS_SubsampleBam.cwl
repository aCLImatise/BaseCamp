class: CommandLineTool
id: TOBIAS_SubsampleBam.cwl
inputs:
- id: bam
  doc: Path to .bam-file
  type: boolean
  inputBinding:
    prefix: --bam
- id: no_rand
  doc: 'Number of randomizations (per step) (default: 3)'
  type: boolean
  inputBinding:
    prefix: --no_rand
- id: start
  doc: 'Start of percent subsample (default: 0)'
  type: boolean
  inputBinding:
    prefix: --start
- id: end
  doc: 'End of percent subsample (default: 100)'
  type: boolean
  inputBinding:
    prefix: --end
- id: step
  doc: 'Step between --start and --end (default: 10)'
  type: boolean
  inputBinding:
    prefix: --step
- id: cores
  doc: 'Cores for multiprocessing (default: 1)'
  type: boolean
  inputBinding:
    prefix: --cores
- id: outdir
  doc: 'Output directory (default: subsamplebam_output)'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: 'Prefix for output files (default: prefix of .bam)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: force
  doc: 'Force creation of subsampled .bam-files (default: only create if not existing)'
  type: boolean
  inputBinding:
    prefix: --force
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
- SubsampleBam
