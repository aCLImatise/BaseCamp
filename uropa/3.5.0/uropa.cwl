#!/usr/bin/env cwl-runner

baseCommand:
- uropa
class: CommandLineTool
cwlVersion: v1.0
id: uropa
inputs:
- doc: ', --bed                       Filename of .bed-file to annotate'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ', --gtf                       Filename of .gtf-file with features'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '[ [ ...]]              Feature for annotation'
  id: feature
  inputBinding:
    prefix: --feature
  type: boolean
- doc: '[ [ ...]]       Specific feature anchor to annotate to'
  id: feature_anchor
  inputBinding:
    prefix: --feature-anchor
  type: boolean
- doc: '[ [ ...]]             Maximum permitted distance from feature (1 or 2 arguments)'
  id: distance
  inputBinding:
    prefix: --distance
  type: boolean
- doc: Desired strand of annotated feature relative to peak
  id: strand
  inputBinding:
    prefix: --strand
  type: boolean
- doc: '[ [ ...]]    Peak location relative to feature location'
  id: relative_location
  inputBinding:
    prefix: --relative-location
  type: boolean
- doc: Set minimum overlap fraction for internal feature annotations. 0 equates to
    internals=False and 1 equates to internals=True. Default is False.
  id: internals
  inputBinding:
    prefix: --internals
  type: boolean
- doc: Filter on 9th column of GTF
  id: filter_attribute
  inputBinding:
    prefix: --filter-attribute
  type: boolean
- doc: '[ [ ...]]     Value(s) of attribute corresponding to --filter- attribute'
  id: attribute_values
  inputBinding:
    prefix: --attribute-values
  type: boolean
- doc: '[ [ ...]]      A list of attributes to show in output (default: all)'
  id: show_attributes
  inputBinding:
    prefix: --show-attributes
  type: boolean
- doc: argparse.SUPPRESS
  id: priority
  inputBinding:
    prefix: --priority
  type: boolean
- doc: Filename of configuration file (keys in this file overwrite command-line arguments
    about query)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: ', --prefix                    Prefix for result file names (defaults to basename
    of .bed-file)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ', --outdir                    Output directory for output files (default:
    current dir)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Additionally create output files for each named query seperately
  id: output_by_query
  inputBinding:
    prefix: --output-by-query
  type: boolean
- doc: Create additional visualisation of results in graphical format
  id: summary
  inputBinding:
    prefix: --summary
  type: boolean
- doc: 'Multiprocessed run: n = number of threads to run annotation process'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Log file name for messages and warnings (default: log is written to stdout)'
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: Print verbose messages (for debugging)
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: ', --chunk                     Number of lines per chunk for multiprocessing
    (default: 1000)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
