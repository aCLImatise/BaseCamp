#!/usr/bin/env cwl-runner

baseCommand:
- anvi-gen-phylogenomic-tree
class: CommandLineTool
cwlVersion: v1.0
id: anvi-gen-phylogenomic-tree
inputs:
- doc: A FASTA-formatted input file
  id: fast_a_file
  inputBinding:
    prefix: --fasta-file
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Program name.
  id: program
  inputBinding:
    prefix: --program
  type: string
