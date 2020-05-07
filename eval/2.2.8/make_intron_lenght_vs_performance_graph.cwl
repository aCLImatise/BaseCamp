class: CommandLineTool
id: make_intron_lenght_vs_performance_graph.pl.cwl
inputs:
- id: m
  doc: ': Sets the minimum bin start [default: min intron length];'
  type: long
  inputBinding:
    prefix: -m
- id: x
  doc: ': Sets the maximum bin end [default: max intron length];'
  type: long
  inputBinding:
    prefix: -x
- id: b
  doc: ': Sets the bin size [default: 1/10 length range]  Cannot be used with -B'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: ': Sets the number of bins [default: 10]  Cannot be used with -b'
  type: string
  inputBinding:
    prefix: -B
- id: g
  doc: ': Input files are gtf not lists'
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ': Verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- make_intron_lenght_vs_performance_graph.pl
