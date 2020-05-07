class: CommandLineTool
id: TOBIAS_ScoreBigwig.cwl
inputs:
- id: score_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: signal
  doc: A .bw file of ATAC-seq cutsite signal
  type: string
  inputBinding:
    prefix: --signal
- id: output
  doc: Full path to output bigwig
  type: string
  inputBinding:
    prefix: --output
- id: regions
  doc: Genomic regions to run footprinting within
  type: string
  inputBinding:
    prefix: --regions
- id: score
  doc: 'Type of scoring to perform on cutsites (footprint/sum/mean/none) (default:
    footprint)'
  type: string
  inputBinding:
    prefix: --score
- id: absolute
  doc: Convert bigwig signal to absolute values before calculating score
  type: boolean
  inputBinding:
    prefix: --absolute
- id: extend
  doc: 'Extend input regions with bp (default: 100)'
  type: long
  inputBinding:
    prefix: --extend
- id: smooth
  doc: 'Smooth output signal by mean in <bp> windows (default: no smoothing)'
  type: long
  inputBinding:
    prefix: --smooth
- id: min_limit
  doc: 'Limit input bigwig value range (default: no lower limit)'
  type: double
  inputBinding:
    prefix: --min-limit
- id: max_limit
  doc: 'Limit input bigwig value range (default: no upper limit)'
  type: double
  inputBinding:
    prefix: --max-limit
- id: fp_min
  doc: 'Minimum footprint width (default: 20)'
  type: long
  inputBinding:
    prefix: --fp-min
- id: fp_max
  doc: 'Maximum footprint width (default: 50)'
  type: long
  inputBinding:
    prefix: --fp-max
- id: flank_min
  doc: 'Minimum range of flanking regions (default: 10)'
  type: long
  inputBinding:
    prefix: --flank-min
- id: flank_max
  doc: 'Maximum range of flanking regions (default: 30)'
  type: long
  inputBinding:
    prefix: --flank-max
- id: window
  doc: 'The window for calculation of sum (default: 100)'
  type: long
  inputBinding:
    prefix: --window
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
- ScoreBigwig
