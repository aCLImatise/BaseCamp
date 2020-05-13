class: CommandLineTool
id: peakaboo.cwl
inputs:
- id: f
  doc: '[ --filelist ] arg       : specify text file containing filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '[ --outdir ] arg (=.)    : set output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: '[ --ext ] arg (=.peaks)  : set extension for output files'
  type: boolean
  inputBinding:
    prefix: -e
- id: scan_begin
  doc: '(=1)        : set first scan'
  type: string
  inputBinding:
    prefix: --scanBegin
- id: scan_end
  doc: '(=2147483647) : set last scan'
  type: string
  inputBinding:
    prefix: --scanEnd
- id: mz_low
  doc: '(=200)          : set mz low cutoff'
  type: string
  inputBinding:
    prefix: --mzLow
- id: mz_high
  doc: '(=2000)        : set mz high cutoff'
  type: string
  inputBinding:
    prefix: --mzHigh
outputs: []
cwlVersion: v1.1
baseCommand:
- peakaboo
