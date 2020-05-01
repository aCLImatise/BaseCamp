#!/usr/bin/env cwl-runner

baseCommand:
- hgGcPercent
class: CommandLineTool
cwlVersion: v1.0
id: hggcpercent
inputs:
- doc: size (default 20000)
  id: change
  inputBinding:
    prefix: '- change'
  type: long
- doc: load mysql table - create bed file
  id: no_load
  inputBinding:
    prefix: -noLoad
  type: string
- doc: <filename> (stdout OK) (implies -noLoad)
  id: output
  inputBinding:
    prefix: '- output'
  type: File
- doc: chrN from the nibDir
  id: process
  inputBinding:
    prefix: '- process'
  type: string
- doc: chromosomes from the nibDir
  id: no_random
  inputBinding:
    prefix: -noRandom
  type: string
- doc: display ... progress during processing
  id: no_dots
  inputBinding:
    prefix: -noDots
  type: string
- doc: 'correctly (default: gaps are not counted as GC)'
  id: process
  inputBinding:
    prefix: '- process'
  type: string
- doc: ascii data ready to pipe to wigEncode
  id: output
  inputBinding:
    prefix: '- output'
  type: string
- doc: by N bases (default 0)
  id: overlap
  inputBinding:
    prefix: '- overlap'
  type: string
- doc: to stderr during processing
  id: display
  inputBinding:
    prefix: '- display'
  type: string
- doc: Read in a bed file for GC content in specific regions and write to bedRegionsOut
  id: bed_region_in
  inputBinding:
    prefix: -bedRegionIn
  type: string
- doc: Write a bed file of GC content in specific regions from bedRegionIn
  id: bed_region_out
  inputBinding:
    prefix: -bedRegionOut
  type: string
