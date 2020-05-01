#!/usr/bin/env cwl-runner

baseCommand:
- mergevcf
class: CommandLineTool
cwlVersion: v1.0
id: mergevcf
inputs:
- doc: Input VCF files
  id: input_files
  inputBinding:
    position: 0
  type: string
- doc: Specify output file (default:stdout)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Specify verbose output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Comma-separated labels for each input VCF file (default:basenames)
  id: labels
  inputBinding:
    prefix: --labels
  type: string
- doc: Annotate variant with number of callers
  id: n_callers
  inputBinding:
    prefix: --ncallers
  type: boolean
- doc: 'Minimum # of callers for variant to pass'
  id: min_callers
  inputBinding:
    prefix: --mincallers
  type: long
- doc: Force interpretation as SV (default:false)
  id: sv
  inputBinding:
    prefix: --sv
  type: boolean
- doc: Include records that have failed one or more filters (default:false)
  id: filtered
  inputBinding:
    prefix: --filtered
  type: boolean
- doc: Window for comparing breakpoint positions for SVs (default:100)
  id: sv_window
  inputBinding:
    prefix: --svwindow
  type: string
