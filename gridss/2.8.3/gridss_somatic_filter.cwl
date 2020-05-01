#!/usr/bin/env cwl-runner

baseCommand:
- gridss_somatic_filter
class: CommandLineTool
cwlVersion: v1.0
id: gridss_somatic_filter
inputs:
- doc: Perform garbage collection after freeing of large objects.
  id: gc
  inputBinding:
    prefix: --gc
  type: boolean
- doc: RDS file containing argument values
  id: opts
  inputBinding:
    prefix: --opts
  type: boolean
- doc: Directory containing Panel Of Normal bed/bedpe used to filter FP somatic events.
    Use gridss. to generate the PON.
  id: pond_ir
  inputBinding:
    prefix: --pondir
  type: boolean
- doc: 'Reference genome to use. Must be a valid installed BSgenome package [default:
    ]'
  id: ref
  inputBinding:
    prefix: --ref
  type: boolean
- doc: GRIDSS VCF
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: High confidence somatic subset
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: Full call set excluding obviously germline call.
  id: full_output
  inputBinding:
    prefix: --fulloutput
  type: boolean
- doc: 'Output directory for plots [default: ]'
  id: plot_dir
  inputBinding:
    prefix: --plotdir
  type: boolean
- doc: 'Ordinal of matching normal sample in the VCF [default: 1]'
  id: normal_ordinal
  inputBinding:
    prefix: --normalordinal
  type: boolean
- doc: 'Path to libgridss.R script [default: ./]'
  id: script_dir
  inputBinding:
    prefix: --scriptdir
  type: boolean
