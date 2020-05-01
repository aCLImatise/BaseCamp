#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-version.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-version.py
inputs:
- doc: Name of the Bactopia tool to execute.
  id: str
  inputBinding:
    position: 0
  type: string
- doc: Pairwise average nucleotide identity
  id: fast_ani
  inputBinding:
    position: 0
  type: string
- doc: Identify marker genes and assign taxonomic classifications
  id: gt_db
  inputBinding:
    position: 1
  type: string
- doc: 16s assembly, alignment and tree
  id: phylo_flash
  inputBinding:
    position: 2
  type: string
- doc: Pan-genome with optional core-genome tree.
  id: roar_y
  inputBinding:
    position: 3
  type: string
- doc: A report summarizing Bactopia project
  id: summary
  inputBinding:
    position: 4
  type: string
- doc: Directory where Bactopia repository is stored.
  id: bac_topia
  inputBinding:
    prefix: --bactopia
  type: string
