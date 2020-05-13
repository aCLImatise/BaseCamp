class: CommandLineTool
id: mergevcf.cwl
inputs:
- id: input_files
  doc: Input VCF files
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Specify output file (default:stdout)
  type: string
  inputBinding:
    prefix: --output
- id: verbose
  doc: Specify verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: labels
  doc: Comma-separated labels for each input VCF file (default:basenames)
  type: string
  inputBinding:
    prefix: --labels
- id: n_callers
  doc: Annotate variant with number of callers
  type: boolean
  inputBinding:
    prefix: --ncallers
- id: min_callers
  doc: 'Minimum # of callers for variant to pass'
  type: long
  inputBinding:
    prefix: --mincallers
- id: sv
  doc: Force interpretation as SV (default:false)
  type: boolean
  inputBinding:
    prefix: --sv
- id: filtered
  doc: Include records that have failed one or more filters (default:false)
  type: boolean
  inputBinding:
    prefix: --filtered
- id: sv_window
  doc: Window for comparing breakpoint positions for SVs (default:100)
  type: string
  inputBinding:
    prefix: --svwindow
outputs: []
cwlVersion: v1.1
baseCommand:
- mergevcf
