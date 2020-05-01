#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-functions
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-functions
inputs:
- doc: List available functional annotation sources.
  id: list_annotation_sources
  inputBinding:
    prefix: --list-annotation-sources
  type: boolean
