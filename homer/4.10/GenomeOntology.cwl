#!/usr/bin/env cwl-runner

baseCommand:
- GenomeOntology.pl
class: CommandLineTool
cwlVersion: v1.0
id: genomeontology.pl
inputs:
- doc: <#> (Genome size used for significance calculations)
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: <peakfile/Tag Directory> (Performs additional significance calculations relative
    to Control Peaks/Tags)
  id: bg
  inputBinding:
    prefix: -bg
  type: boolean
