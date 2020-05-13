class: CommandLineTool
id: uropa.cwl
inputs:
- id: b
  doc: ', --bed                       Filename of .bed-file to annotate'
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: ', --gtf                       Filename of .gtf-file with features'
  type: boolean
  inputBinding:
    prefix: -g
- id: feature
  doc: '[ [ ...]]              Feature for annotation'
  type: boolean
  inputBinding:
    prefix: --feature
- id: feature_anchor
  doc: '[ [ ...]]       Specific feature anchor to annotate to'
  type: boolean
  inputBinding:
    prefix: --feature-anchor
- id: distance
  doc: '[ [ ...]]             Maximum permitted distance from feature (1 or 2 arguments)'
  type: boolean
  inputBinding:
    prefix: --distance
- id: strand
  doc: Desired strand of annotated feature relative to peak
  type: boolean
  inputBinding:
    prefix: --strand
- id: relative_location
  doc: '[ [ ...]]    Peak location relative to feature location'
  type: boolean
  inputBinding:
    prefix: --relative-location
- id: internals
  doc: Set minimum overlap fraction for internal feature annotations. 0 equates to
    internals=False and 1 equates to internals=True. Default is False.
  type: boolean
  inputBinding:
    prefix: --internals
- id: filter_attribute
  doc: Filter on 9th column of GTF
  type: boolean
  inputBinding:
    prefix: --filter-attribute
- id: attribute_values
  doc: '[ [ ...]]     Value(s) of attribute corresponding to --filter- attribute'
  type: boolean
  inputBinding:
    prefix: --attribute-values
- id: show_attributes
  doc: '[ [ ...]]      A list of attributes to show in output (default: all)'
  type: boolean
  inputBinding:
    prefix: --show-attributes
- id: priority
  doc: argparse.SUPPRESS
  type: boolean
  inputBinding:
    prefix: --priority
- id: input
  doc: Filename of configuration file (keys in this file overwrite command-line arguments
    about query)
  type: string
  inputBinding:
    prefix: --input
- id: p
  doc: ', --prefix                    Prefix for result file names (defaults to basename
    of .bed-file)'
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: ', --outdir                    Output directory for output files (default:
    current dir)'
  type: boolean
  inputBinding:
    prefix: -o
- id: output_by_query
  doc: Additionally create output files for each named query seperately
  type: boolean
  inputBinding:
    prefix: --output-by-query
- id: summary
  doc: Create additional visualisation of results in graphical format
  type: boolean
  inputBinding:
    prefix: --summary
- id: threads
  doc: 'Multiprocessed run: n = number of threads to run annotation process'
  type: string
  inputBinding:
    prefix: --threads
- id: log
  doc: 'Log file name for messages and warnings (default: log is written to stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: debug
  doc: Print verbose messages (for debugging)
  type: boolean
  inputBinding:
    prefix: --debug
- id: c
  doc: ', --chunk                     Number of lines per chunk for multiprocessing
    (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- uropa
