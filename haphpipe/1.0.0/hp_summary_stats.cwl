class: CommandLineTool
id: hp_summary_stats.cwl
inputs:
- id: dir_list
  doc: List of directories which include the required files, one on each line
  type: string
  inputBinding:
    prefix: --dir_list
- id: ph_list
  doc: List of directories which include haplotype summary files, one on each line
  type: string
  inputBinding:
    prefix: --ph_list
- id: amplicons
  doc: 'Amplicons used in assembly (default: False)'
  type: boolean
  inputBinding:
    prefix: --amplicons
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Name for log file (output)
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_summary_stats
