#!/usr/bin/env cwl-runner

baseCommand:
- preparseGenome.pl
class: CommandLineTool
cwlVersion: v1.0
id: preparsegenome.pl
inputs:
- doc: <#> (size of window around ref positions to prepare, default=50000)
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: <#> (maximum number of preparesed fragments to create, default=2e6)
  id: max
  inputBinding:
    prefix: -max
  type: boolean
- doc: <#> (minimum size of region near ref pos to include, default=1000)
  id: min_inc
  inputBinding:
    prefix: -minInc
  type: boolean
- doc: (alternative directory to place the preparsed output files)
  id: pre_parsed_dir
  inputBinding:
    prefix: -preparsedDir
  type: Directory
