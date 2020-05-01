#!/usr/bin/env cwl-runner

baseCommand:
- anvi-upgrade
class: CommandLineTool
cwlVersion: v1.0
id: anvi-upgrade
inputs:
- doc: Source repository to download releases, currently only Github is supported.
    Enter in 'merenlab/anvio' format.
  id: repository
  inputBinding:
    prefix: --repository
  type: string
