#!/usr/bin/env cwl-runner

baseCommand:
- zagros
class: CommandLineTool
cwlVersion: v1.0
id: zagros
inputs:
- doc: 'output file name (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'width of motifs to find (4 <= w <= 12; default: 6) '
  id: width
  inputBinding:
    prefix: -width
  type: boolean
- doc: 'number of motifs to output (default: 10) '
  id: number
  inputBinding:
    prefix: -number
  type: boolean
- doc: 'directory with chrom files (FASTA format) '
  id: chrom
  inputBinding:
    prefix: -chrom
  type: boolean
- doc: 'structure information file '
  id: structure
  inputBinding:
    prefix: -structure
  type: boolean
- doc: 'diagnostic events information file '
  id: diagnostic_events
  inputBinding:
    prefix: -diagnostic_events
  type: boolean
- doc: 'provide a fixed value for delta, the offset of  cross-linking site from motif
    occurrences. -8 <= l <=  8; if omitted, delta is optimised using an exhaustive  search '
  id: delta
  inputBinding:
    prefix: -delta
  type: boolean
- doc: 'optimize the geometric distributionparameter for  the distirbution of cross-link
    sites around motif  occurrences, using the Newton-Raphson algorithm.  If omitted,
    this parameter is not optimised and is set  to a empirically pre-determined default
    value. '
  id: geo
  inputBinding:
    prefix: -geo
  type: boolean
- doc: "A weight to determine the diagnostic events' level of  contribution (default:\
    \ 1.1) "
  id: de_weight
  inputBinding:
    prefix: -de_weight
  type: boolean
- doc: 'output indicator probabilities for each sequence  and motif to this file '
  id: indicators
  inputBinding:
    prefix: -indicators
  type: boolean
- doc: 'number of starting points to try for EM search. Higher  values will be slower,
    but more likely to find the  global maximum (default: 10) '
  id: starting_points
  inputBinding:
    prefix: -starting-points
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
