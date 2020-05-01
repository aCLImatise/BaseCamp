#!/usr/bin/env cwl-runner

baseCommand:
- alignments-filter
class: CommandLineTool
cwlVersion: v1.0
id: alignments-filter
inputs:
- doc: '[ --min-score ] arg (=0)           set min-score filter value'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --min-pid ] arg (=0)             set minimal PID to consider'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --top-percent ] arg (=1)         set top-percent filter value'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --max-evalue ] arg (=-1)         set maximum evalue for filtering'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --best-alignments ] arg (=0)     set number of top score alignments to  consider
    (after toppercent filter)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --sort-score ]                   sort alignments by decreasing score'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --keep-best-per-ref ]            for each combination of query and  reference
    sequence id all but the best  scoring alignment are removed'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --min-support ] arg (=1)         set minimum number of hits an alignment
    needs to have (after filtering)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --remove-ref-from-query-taxon ]  remove alignments for labeled data to  test
    different degrees of taxonomic  distance'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --taxon-mapping-sample ] arg     map sample identifier to taxon'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: '[ --taxon-mapping-reference ] arg  map reference identifier to taxon'
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: '[ --mask-by-star ]                 instead of suppressing filtered  alignments
    mask them by prefixing a  star at the line start'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
