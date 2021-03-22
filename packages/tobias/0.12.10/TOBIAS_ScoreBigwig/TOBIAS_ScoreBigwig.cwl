class: CommandLineTool
id: TOBIAS_ScoreBigwig.cwl
inputs:
- id: in_signal
  doc: A .bw file of ATAC-seq cutsite signal
  type: File?
  inputBinding:
    prefix: --signal
- id: in_output
  doc: Full path to output bigwig
  type: File?
  inputBinding:
    prefix: --output
- id: in_regions
  doc: Genomic regions to run footprinting within
  type: string?
  inputBinding:
    prefix: --regions
- id: in_score
  doc: "Type of scoring to perform on cutsites\n(footprint/sum/mean/none) (default:\
    \ footprint)"
  type: string?
  inputBinding:
    prefix: --score
- id: in_absolute
  doc: "Convert bigwig signal to absolute values before\ncalculating score"
  type: boolean?
  inputBinding:
    prefix: --absolute
- id: in_extend
  doc: 'Extend input regions with bp (default: 100)'
  type: long?
  inputBinding:
    prefix: --extend
- id: in_smooth
  doc: "Smooth output signal by mean in <bp> windows (default:\nno smoothing)"
  type: long?
  inputBinding:
    prefix: --smooth
- id: in_min_limit
  doc: 'Limit input bigwig value range (default: no lower limit)'
  type: double?
  inputBinding:
    prefix: --min-limit
- id: in_max_limit
  doc: 'Limit input bigwig value range (default: no upper limit)'
  type: double?
  inputBinding:
    prefix: --max-limit
- id: in_fp_min
  doc: 'Minimum footprint width (default: 20)'
  type: long?
  inputBinding:
    prefix: --fp-min
- id: in_fp_max
  doc: 'Maximum footprint width (default: 50)'
  type: long?
  inputBinding:
    prefix: --fp-max
- id: in_flank_min
  doc: 'Minimum range of flanking regions (default: 10)'
  type: long?
  inputBinding:
    prefix: --flank-min
- id: in_flank_max
  doc: 'Maximum range of flanking regions (default: 30)'
  type: long?
  inputBinding:
    prefix: --flank-max
- id: in_window
  doc: 'The window for calculation of sum (default: 100)'
  type: long?
  inputBinding:
    prefix: --window
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
- id: in_score_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Full path to output bigwig
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ScoreBigwig
