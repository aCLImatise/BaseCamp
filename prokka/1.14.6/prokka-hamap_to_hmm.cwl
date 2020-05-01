#!/usr/bin/env cwl-runner

baseCommand:
- prokka-hamap_to_hmm
class: CommandLineTool
cwlVersion: v1.0
id: prokka-hamap_to_hmm
inputs:
- doc: "!      Verbose progress (default '0')."
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Path to downloaded HAMAP folder (ftp://ftp.expasy.org/databases/hamap/) (default
    '').
  id: datadir
  inputBinding:
    prefix: --datadir
  type: string
- doc: Separator between EC/gene/product (default '~~~').
  id: sep
  inputBinding:
    prefix: --sep
  type: string
- doc: Replace empty EC/gene/product with this (default '').
  id: blank
  inputBinding:
    prefix: --blank
  type: string
