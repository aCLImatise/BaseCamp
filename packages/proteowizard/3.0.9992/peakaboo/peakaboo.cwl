class: CommandLineTool
id: peakaboo.cwl
inputs:
- id: in_arg_specify_text
  doc: '[ --filelist ] arg       : specify text file containing filenames'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_set_directory
  doc: '[ --outdir ] arg (=.)    : set output directory'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_set_extension
  doc: '[ --ext ] arg (=.peaks)  : set extension for output files'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_scan_begin
  doc: '(=1)        : set first scan'
  type: long?
  inputBinding:
    prefix: --scanBegin
- id: in_scan_end
  doc: '(=2147483647) : set last scan'
  type: long?
  inputBinding:
    prefix: --scanEnd
- id: in_mz_low
  doc: '(=200)          : set mz low cutoff'
  type: long?
  inputBinding:
    prefix: --mzLow
- id: in_mz_high
  doc: '(=2000)        : set mz high cutoff'
  type: long?
  inputBinding:
    prefix: --mzHigh
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_set_directory
  doc: '[ --outdir ] arg (=.)    : set output directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_set_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- peakaboo
