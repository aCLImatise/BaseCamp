class: CommandLineTool
id: XS.cwl
inputs:
- id: in_verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sequencingtype_type_
  doc: '<sequencingType>     type: 1=Roche-454, 2=Illumina, 3=ABI SOLiD, 4=Ion Torrent'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_hf
  doc: 'header format: 1=Length appendix, 2=Pair End'
  type: long
  inputBinding:
    prefix: -hf
- id: in_ninstrumentname_unique_use
  doc: n=<instrumentName>   the unique instrument name (use n= before name)
  type: boolean
  inputBinding:
    prefix: -i
- id: in_use_same_header
  doc: use the same header in third line of the read
  type: boolean
  inputBinding:
    prefix: -o
- id: in_ls
  doc: static line (bases/quality scores) size
  type: long
  inputBinding:
    prefix: -ls
- id: in_ld
  doc: :<maxSize>  dynamic line (bases/quality scores) size
  type: long
  inputBinding:
    prefix: -ld
- id: in_numberofreads_number_reads
  doc: <numberOfReads>      number of reads per file
  type: boolean
  inputBinding:
    prefix: -n
- id: in_acgtn_symbols_frequency
  doc: <A>,<C>,<G>,<T>,<N>  symbols frequency
  type: boolean
  inputBinding:
    prefix: -f
- id: in_rn
  doc: 'repeats: number (default: 0)'
  type: long
  inputBinding:
    prefix: -rn
- id: in_ri
  doc: 'repeats: minimum size'
  type: long
  inputBinding:
    prefix: -ri
- id: in_ra
  doc: 'repeats: maximum size'
  type: long
  inputBinding:
    prefix: -ra
- id: in_rm
  doc: 'repeats: mutation frequency'
  type: string
  inputBinding:
    prefix: -rm
- id: in_rr
  doc: 'repeats: use reverse complement repeats'
  type: boolean
  inputBinding:
    prefix: -rr
- id: in_qt
  doc: 'quality scores distribution: 1=uniform, 2=gaussian'
  type: long
  inputBinding:
    prefix: -qt
- id: in_qf
  doc: 'load file: mean, standard deviation (when: -qt 2)'
  type: File
  inputBinding:
    prefix: -qf
- id: in_qc
  doc: custom template ascii alphabet
  type: string
  inputBinding:
    prefix: -qc
- id: in_eh
  doc: excludes the use of headers from output
  type: boolean
  inputBinding:
    prefix: -eh
- id: in_eo
  doc: excludes the use of optional headers (+) from output
  type: boolean
  inputBinding:
    prefix: -eo
- id: in_ed
  doc: excludes the use of DNA bases from output
  type: boolean
  inputBinding:
    prefix: -ed
- id: in_edb
  doc: excludes '\n' when DNA bases line size is reached
  type: boolean
  inputBinding:
    prefix: -edb
- id: in_es
  doc: excludes the use of quality scores from output
  type: boolean
  inputBinding:
    prefix: -es
- id: in_seed_generation_seed
  doc: <seed>               generation seed
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- XS
