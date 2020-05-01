#!/usr/bin/env cwl-runner

baseCommand:
- tree-events-dlc
class: CommandLineTool
cwlVersion: v1.0
id: tree-events-dlc
inputs:
- doc: set to ignore extra lineages at implied speciation nodes
  id: explicit
  inputBinding:
    prefix: --explicit
  type: boolean
- doc: if set, use locus recon rather than MPR
  id: use_locus_recon
  inputBinding:
    prefix: --use-locus-recon
  type: boolean
