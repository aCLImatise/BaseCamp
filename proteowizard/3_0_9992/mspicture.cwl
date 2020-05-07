class: CommandLineTool
id: mspicture.cwl
inputs:
- id: input_filenames
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: '[ --outdir ] arg (=.) : output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: '[ --config ] arg      : configuration file (optionName=value) (ignored)'
  type: boolean
  inputBinding:
    prefix: -c
- id: l
  doc: '[ --label ] arg       : set filename label to xxx'
  type: boolean
  inputBinding:
    prefix: -l
- id: mz_low
  doc: ': set low m/z cutoff'
  type: string
  inputBinding:
    prefix: --mzLow
- id: mz_high
  doc: ': set high m/z cutoff'
  type: string
  inputBinding:
    prefix: --mzHigh
- id: timescale
  doc: ': set scale of time axis'
  type: string
  inputBinding:
    prefix: --timeScale
- id: b
  doc: '[ --binCount ] arg    : set histogram bin count'
  type: boolean
  inputBinding:
    prefix: -b
- id: t
  doc: '[ --time ]            : render linearly to time'
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: '[ --scan ]            : render linearly to scans'
  type: boolean
  inputBinding:
    prefix: -s
- id: z
  doc: '[ --zRadius ] arg     : set intensity function z-score radius [=2]'
  type: boolean
  inputBinding:
    prefix: -z
- id: w
  doc: '[ --width ] arg       : set output bitmap width (default is calculated)'
  type: boolean
  inputBinding:
    prefix: -w
- id: bry
  doc: ': use blue-red-yellow gradient'
  type: boolean
  inputBinding:
    prefix: --bry
- id: grey
  doc: ': use grey-scale gradient'
  type: boolean
  inputBinding:
    prefix: --grey
- id: bin_sum
  doc: ': sum intensity in bins [default = max intensity]'
  type: boolean
  inputBinding:
    prefix: --binSum
- id: m
  doc: '[ --ms2locs ]         : indicate masses selected for ms2'
  type: boolean
  inputBinding:
    prefix: -m
- id: shape
  doc: ': shape of the pseudo2d gel markup  [circle(default)|square].'
  type: string
  inputBinding:
    prefix: --shape
- id: p
  doc: '[ --pepxml ] arg      : pepxml file location'
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: '[ --msi ] arg         : msInspect output file location'
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: '[ --flat ] arg        : peptide file location (nativeID rt mz score seq)'
  type: boolean
  inputBinding:
    prefix: -f
- id: x
  doc: '[ --commands ] arg    : processes commands'
  type: boolean
  inputBinding:
    prefix: -x
- id: v
  doc: '[ --verbose ]         : prints extra information.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mspicture
