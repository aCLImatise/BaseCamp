#!/usr/bin/env cwl-runner

baseCommand:
- ktGetLCA
class: CommandLineTool
cwlVersion: v1.0
id: ktgetlca
inputs:
- doc: Streaming mode. Each line is expected to be a whitespace-separated list  of
    inputs for a single lowest common ancestor computation. Taxonomy will be preloaded,
    allowing for faster computation after a small upfront time.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
