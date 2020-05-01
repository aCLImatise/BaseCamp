#!/usr/bin/env cwl-runner

baseCommand:
- prokka-clusters_to_hmm
class: CommandLineTool
cwlVersion: v1.0
id: prokka-clusters_to_hmm
inputs:
- doc: "!      Verbose output (default '0')."
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Source CLUSTERS folder (default '/bio/data/CLUSTERS/latest').
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: "Library: PHA PRK ... (default '')."
  id: lib
  inputBinding:
    prefix: --lib
  type: string
- doc: Output folder for .hmm files and indices (default '.').
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
