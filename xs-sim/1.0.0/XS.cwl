class: CommandLineTool
id: XS.cwl
inputs:
- id: v
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: '<sequencingType>     type: 1=Roche-454, 2=Illumina, 3=ABI SOLiD, 4=Ion Torrent'
  type: boolean
  inputBinding:
    prefix: -t
- id: hf
  doc: 'header format: 1=Length appendix, 2=Pair End'
  type: string
  inputBinding:
    prefix: -hf
- id: i
  doc: n=<instrumentName>   the unique instrument name (use n= before name)
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: use the same header in third line of the read
  type: boolean
  inputBinding:
    prefix: -o
- id: ls
  doc: static line (bases/quality scores) size
  type: string
  inputBinding:
    prefix: -ls
- id: ld
  doc: :<maxSize>  dynamic line (bases/quality scores) size
  type: long
  inputBinding:
    prefix: -ld
- id: n
  doc: <numberOfReads>      number of reads per file
  type: boolean
  inputBinding:
    prefix: -n
- id: f
  doc: <A>,<C>,<G>,<T>,<N>  symbols frequency
  type: boolean
  inputBinding:
    prefix: -f
- id: rn
  doc: 'repeats: number (default: 0)'
  type: string
  inputBinding:
    prefix: -rn
- id: ri
  doc: 'repeats: minimum size'
  type: string
  inputBinding:
    prefix: -ri
- id: ra
  doc: 'repeats: maximum size'
  type: string
  inputBinding:
    prefix: -ra
- id: rm
  doc: 'repeats: mutation frequency'
  type: string
  inputBinding:
    prefix: -rm
- id: rr
  doc: 'repeats: use reverse complement repeats'
  type: boolean
  inputBinding:
    prefix: -rr
- id: qt
  doc: 'quality scores distribution: 1=uniform, 2=gaussian'
  type: string
  inputBinding:
    prefix: -qt
- id: qf
  doc: 'load file: mean, standard deviation (when: -qt 2)'
  type: string
  inputBinding:
    prefix: -qf
- id: qc
  doc: custom template ascii alphabet
  type: string
  inputBinding:
    prefix: -qc
- id: eh
  doc: excludes the use of headers from output
  type: boolean
  inputBinding:
    prefix: -eh
- id: eo
  doc: excludes the use of optional headers (+) from output
  type: boolean
  inputBinding:
    prefix: -eo
- id: ed
  doc: excludes the use of DNA bases from output
  type: boolean
  inputBinding:
    prefix: -ed
- id: edb
  doc: excludes '\n' when DNA bases line size is reached
  type: boolean
  inputBinding:
    prefix: -edb
- id: es
  doc: excludes the use of quality scores from output
  type: boolean
  inputBinding:
    prefix: -es
- id: s
  doc: <seed>               generation seed
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- XS
