#!/usr/bin/env cwl-runner

baseCommand:
- starchstrip
class: CommandLineTool
cwlVersion: v1.0
id: starchstrip
inputs:
- doc: Include specified chromosomes from <starch-file>.
  id: include
  inputBinding:
    prefix: --include
  type: string
- doc: Exclude specified chromosomes from <starch-file>.
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
