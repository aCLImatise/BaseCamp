class: CommandLineTool
id: combineSampleMetrics.sh.cwl
inputs:
- id: sample_dirs_file
  doc: Relative or absolute path to file containing a list of directories -- one per
    sample
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: metrics
  doc: 'File name of the metrics files which must exist in each of the sample directories.
    (default: metrics)'
  type: string
  inputBinding:
    prefix: --metrics
- id: output
  doc: 'Output file. Relative or absolute path to the combined metrics file. (default:
    metrics.tsv)'
  type: File
  inputBinding:
    prefix: --output
- id: spaces
  doc: 'Emit column headings with spaces instead of underscores (default: False)'
  type: boolean
  inputBinding:
    prefix: --spaces
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- combineSampleMetrics.sh
