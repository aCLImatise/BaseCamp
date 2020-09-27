class: CommandLineTool
id: mergevcf.cwl
inputs:
- id: in_output
  doc: Specify output file (default:stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Specify verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_labels
  doc: "Comma-separated labels for each input VCF file\n(default:basenames)"
  type: File
  inputBinding:
    prefix: --labels
- id: in_n_callers
  doc: Annotate variant with number of callers
  type: boolean
  inputBinding:
    prefix: --ncallers
- id: in_min_callers
  doc: 'Minimum # of callers for variant to pass'
  type: long
  inputBinding:
    prefix: --mincallers
- id: in_sv
  doc: Force interpretation as SV (default:false)
  type: boolean
  inputBinding:
    prefix: --sv
- id: in_filtered
  doc: "Include records that have failed one or more filters\n(default:false)"
  type: boolean
  inputBinding:
    prefix: --filtered
- id: in_sv_window
  doc: "Window for comparing breakpoint positions for SVs\n(default:100)\n"
  type: long
  inputBinding:
    prefix: --svwindow
- id: in_input_files
  doc: Input VCF files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Specify output file (default:stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- mergevcf
