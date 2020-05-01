#!/usr/bin/env cwl-runner

baseCommand:
- getHomerQCstats.pl
class: CommandLineTool
cwlVersion: v1.0
id: gethomerqcstats.pl
inputs:
- doc: (mapping between tag directors and alignment files)
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: '[tagDir2] ... (tag directories to get stats from)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: '[chr2] ... (print tags for these chromosomes)'
  id: chr
  inputBinding:
    prefix: -chr
  type: string
- doc: '[f2.sam] ... (alignment files, will look for *log files)'
  id: sam
  inputBinding:
    prefix: -sam
  type: string
