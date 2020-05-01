#!/usr/bin/env cwl-runner

baseCommand:
- esearch
class: CommandLineTool
cwlVersion: v1.0
id: esearch
inputs:
- doc: Chromosome Base Position Default Order Heterozygosity Organism SNP_ID Success
    Rate
  id: snp
  inputBinding:
    position: 0
  type: string
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Query string
  id: query
  inputBinding:
    prefix: -query
  type: boolean
- doc: Result presentation order
  id: sort
  inputBinding:
    prefix: -sort
  type: boolean
- doc: Number of days in the past
  id: days
  inputBinding:
    prefix: -days
  type: boolean
- doc: Date field abbreviation
  id: date_type
  inputBinding:
    prefix: -datetype
  type: boolean
- doc: Start of date range
  id: min_date
  inputBinding:
    prefix: -mindate
  type: boolean
- doc: End of date range
  id: maxdate
  inputBinding:
    prefix: -maxdate
  type: boolean
- doc: Query words individually in field
  id: field
  inputBinding:
    prefix: -field
  type: boolean
- doc: Query overlapping word pairs
  id: pairs
  inputBinding:
    prefix: -pairs
  type: boolean
- doc: Correct misspellings in query
  id: spell
  inputBinding:
    prefix: -spell
  type: boolean
- doc: Alias for query step
  id: label
  inputBinding:
    prefix: -label
  type: boolean
