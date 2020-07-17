class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/XS.cwl
inputs:
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: sequencingtype_type_solid
  doc: '<sequencingType>     type: 1=Roche-454, 2=Illumina, 3=ABI SOLiD, 4=Ion Torrent'
  type: boolean
  inputBinding:
    prefix: -t
- id: hf
  doc: 'header format: 1=Length appendix, 2=Pair End'
  type: string
  inputBinding:
    prefix: -hf
- id: ninstrumentname_unique_instrument
  doc: n=<instrumentName>   the unique instrument name (use n= before name)
  type: boolean
  inputBinding:
    prefix: -i
- id: use_same_header
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
- id: numberofreads_number_reads
  doc: <numberOfReads>      number of reads per file
  type: boolean
  inputBinding:
    prefix: -n
- id: acgtn_symbols_frequency
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
- id: seed_generation_seed
  doc: <seed>               generation seed
  type: boolean
  inputBinding:
    prefix: -s
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- XS
