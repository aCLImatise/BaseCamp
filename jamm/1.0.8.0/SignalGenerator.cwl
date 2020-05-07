class: CommandLineTool
id: SignalGenerator.sh.cwl
inputs:
- id: s
  doc: Directory containing sample files (required)
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: Genome size file (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: Output Directory (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: directory containing input or Control files
  type: boolean
  inputBinding:
    prefix: -c
- id: r
  doc: file with Regions to get signal for (required)
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: 'Bin size for signal generation (default: 10)'
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: Fragment lengths (required if -t is "single")
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: 'Number of processors used by R scripts (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: 'Alignment type, paired or single (default: single)'
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: 'Normalization method, chromAverage or depth (default: chromAverage)'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- SignalGenerator.sh
