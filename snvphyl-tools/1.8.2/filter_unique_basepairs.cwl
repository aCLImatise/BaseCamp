#!/usr/bin/env cwl-runner

baseCommand:
- filter_unique_basepairs.pl
class: CommandLineTool
cwlVersion: v1.0
id: filter_unique_basepairs.pl
inputs:
- doc: The tsv file containing the snv_alignment
  id: tsv
  inputBinding:
    prefix: --tsv
  type: boolean
- doc: The .tre file that contains the data for making the tree
  id: tree
  inputBinding:
    prefix: --tree
  type: boolean
- doc: Include all matches, including non-valid entries
  id: valid
  inputBinding:
    prefix: --valid
  type: boolean
- doc: The file the matching positions will be written to
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: 'A VCF input file in the following format: strain_name=file_path'
  id: vcf
  inputBinding:
    prefix: --vcf
  type: boolean
- doc: A folder containing all of the tabular snveff outputs
  id: directory
  inputBinding:
    prefix: --directory
  type: boolean
- doc: The strains you wish to find unique basepairs in
  id: strains
  inputBinding:
    prefix: --strains
  type: boolean
- doc: The output name for the clades tree file produced
  id: clade
  inputBinding:
    prefix: --clade
  type: boolean
- doc: Suppress all warnings
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
