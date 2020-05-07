class: CommandLineTool
id: tbvcfreport_generate_OPTIONS.cwl
inputs:
- id: tb_profiler_report
  doc: TBProfiler json report.
  type: File
  inputBinding:
    prefix: --tbprofiler-report
- id: filter_udi
  doc: '/ -nf, --no-filter-udi Filter upstream, downstream and intergenic variants.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --filter-udi
outputs: []
cwlVersion: v1.1
baseCommand:
- tbvcfreport
- generate
- OPTIONS
