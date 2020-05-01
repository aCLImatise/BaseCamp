#!/usr/bin/env cwl-runner

baseCommand:
- gridss_annotate_insertions_repeatmaster
class: CommandLineTool
cwlVersion: v1.0
id: gridss_annotate_insertions_repeatmaster
inputs:
- doc: RDS file containing argument values
  id: opts
  inputBinding:
    prefix: --opts
  type: boolean
- doc: Input GRIDSS VCF
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: Output GRIDSS VCF
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: RepeatMasker .fa.out file
  id: repeatmasker
  inputBinding:
    prefix: --repeatmasker
  type: boolean
- doc: 'Path to libgridss.R script [default: ./]'
  id: script_dir
  inputBinding:
    prefix: --scriptdir
  type: boolean
