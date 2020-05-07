class: CommandLineTool
id: JAMM.sh.cwl
inputs:
- id: s
  doc: directory containing Sample files (required)
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: Genome size file (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: Output directory (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: directory containing input or Control files
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: 'Fragment length(s) (default: estimated)'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: 'Resolution, peak or region or window (default: peak)'
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: 'Mode, normal or narrow (default: normal)'
  type: boolean
  inputBinding:
    prefix: -m
- id: i
  doc: 'clustering Initialization window selection, deterministic or stochastic (default:
    deterministic)'
  type: boolean
  inputBinding:
    prefix: -i
- id: b
  doc: 'Bin Size (default: estimated)'
  type: boolean
  inputBinding:
    prefix: -b
- id: w
  doc: 'minimum Window size (default: 2 --- Note: this means minimum_window_size =
    bin_size x the_value_of_-w)'
  type: boolean
  inputBinding:
    prefix: -w
- id: e
  doc: 'window Enrichment cutoff, auto or any numeric value (default: 1 --- Set this
    to "auto" to estimate the window enrichment cutoff)'
  type: boolean
  inputBinding:
    prefix: -e
- id: d
  doc: 'keep PCR Dupicates in single-end mode, y or n (default: n --- if -t is "paired",
    this option has no effect) '
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: 'Type, single or paired (default: single, requires BED files. paired requires
    BEDPE files)'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: 'Number of processors used by R scripts (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: 'Directory where the temporary working repository will be created. This directory
    will be deleted after JAMM is done (default: a new directory is created in /tmp
    folder).'
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- JAMM.sh
