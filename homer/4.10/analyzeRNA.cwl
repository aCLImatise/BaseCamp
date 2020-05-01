#!/usr/bin/env cwl-runner

baseCommand:
- analyzeRNA.pl
class: CommandLineTool
cwlVersion: v1.0
id: analyzerna.pl
inputs:
- doc: ': analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]'
  id: or
  inputBinding:
    prefix: -or-
  type: boolean
