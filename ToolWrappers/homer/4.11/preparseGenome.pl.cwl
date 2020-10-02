class: CommandLineTool
id: preparseGenome.pl.cwl
inputs:
- id: in_size
  doc: <#> (size of fragments to use for preparsing the genome)
  type: boolean
  inputBinding:
    prefix: -size
- id: in_mask
  doc: (mask repeats - i.e. lower-case bases)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_ref
  doc: "(reference position file, default: [genome].tss)\nIf no reference file is\
    \ given or found, random regions will be used\nTo force the use of random regions,\
    \ use \"-ref random\""
  type: File
  inputBinding:
    prefix: -ref
- id: in_window
  doc: <#> (size of window around ref positions to prepare, default=50000)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_max
  doc: <#> (maximum number of preparesed fragments to create, default=2e6)
  type: boolean
  inputBinding:
    prefix: -max
- id: in_min_inc
  doc: <#> (minimum size of region near ref pos to include, default=1000)
  type: boolean
  inputBinding:
    prefix: -minInc
- id: in_pre_parsed_dir
  doc: (alternative directory to place the preparsed output files)
  type: Directory
  inputBinding:
    prefix: -preparsedDir
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pre_parsed_dir
  doc: (alternative directory to place the preparsed output files)
  type: Directory
  outputBinding:
    glob: $(inputs.in_pre_parsed_dir)
cwlVersion: v1.1
baseCommand:
- preparseGenome.pl
