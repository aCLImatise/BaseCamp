#!/usr/bin/env cwl-runner

baseCommand:
- convert_external_genome
class: CommandLineTool
cwlVersion: v1.0
id: convert_external_genome
inputs:
- doc: Path to the 'nucmer' executable.
  id: nuc_me_rpath
  inputBinding:
    prefix: --nucmerpath
  type: string
- doc: Optional arguments to pass to the 'nucmer' executable.
  id: nuc_mer_args
  inputBinding:
    prefix: --nucmerargs
  type: string
- doc: Path to the 'delta-filter' executable.
  id: delta_filter_path
  inputBinding:
    prefix: --deltafilterpath
  type: string
- doc: Optional arguments to pass to the 'delta-filter' executable.
  id: delta_filter_args
  inputBinding:
    prefix: --deltafilterargs
  type: string
- doc: Path to the reference fasta file.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Path to the external genome fasta file.
  id: external
  inputBinding:
    prefix: --external
  type: string
- doc: Name of this external genome.
  id: name
  inputBinding:
    prefix: --name
  type: string
