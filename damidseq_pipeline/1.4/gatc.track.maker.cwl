#!/usr/bin/env cwl-runner

baseCommand:
- gatc.track.maker.pl
class: CommandLineTool
cwlVersion: v1.0
id: gatc.track.maker.pl
inputs:
- doc: Process mitochondrial chromosome (not recommended)
  id: mi_to
  inputBinding:
    prefix: --mito
  type: boolean
- doc: Name of organism (for output file)
  id: name
  inputBinding:
    prefix: --name
  type: boolean
- doc: Process scaffold assemblies (not recommended)
  id: scaffolds
  inputBinding:
    prefix: --scaffolds
  type: boolean
