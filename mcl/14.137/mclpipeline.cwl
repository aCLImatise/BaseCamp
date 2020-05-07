class: CommandLineTool
id: mclpipeline.cwl
inputs:
- id: file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: what_if
  doc: shows only what would be done.
  type: boolean
  inputBinding:
    prefix: --whatif
- id: start_assemble
  doc: skip the parse step, assume needed files exist already.
  type: boolean
  inputBinding:
    prefix: --start-assemble
- id: start_mcl
  doc: start running mcl immediately, as above.
  type: boolean
  inputBinding:
    prefix: --start-mcl
- id: start_format
  doc: only (re)do the formatting stage, as above.
  type: boolean
  inputBinding:
    prefix: --start-format
- id: prepare_mcl
  doc: create the input file for mcl, then quit.
  type: boolean
  inputBinding:
    prefix: --prepare-mcl
- id: parser
  doc: name of parse script
  type: string
  inputBinding:
    prefix: --parser
- id: parser_tag
  doc: tag of options to pass to parse script.
  type: string
  inputBinding:
    prefix: --parser-tag
- id: ass_repeat
  doc: str in <add|max|mul|left|right>
  type: string
  inputBinding:
    prefix: --ass-repeat
- id: ass_no_map
  doc: map file does not exist or should be ignored.
  type: boolean
  inputBinding:
    prefix: --ass-nomap
- id: ass
  doc: <-opt[=val]> add '-opt [val]' to mcxassemble command line.
  type: boolean
  inputBinding:
    prefix: --ass
- id: start_assemble
  doc: start running mcxassemble with base-name.
  type: string
  inputBinding:
    prefix: --start-assemble
- id: mcl_te
  doc: number of expansion threads.
  type: string
  inputBinding:
    prefix: --mcl-te
- id: mcl_i
  doc: inflation value, MAIN mcl handle.
  type: double
  inputBinding:
    prefix: --mcl-I
- id: mcl_i
  doc: initial inflation value.
  type: double
  inputBinding:
    prefix: --mcl-i
- id: mcl_l
  doc: initial loop length.
  type: long
  inputBinding:
    prefix: --mcl-l
- id: mcl_pi
  doc: pre-inflation value.
  type: double
  inputBinding:
    prefix: --mcl-pi
- id: mcl_c
  doc: center value.
  type: double
  inputBinding:
    prefix: --mcl-c
- id: mcl_scheme
  doc: i in 1..5, resource allocation level.
  type: string
  inputBinding:
    prefix: --mcl-scheme
- id: mcl_o
  doc: if you *need* to use this, I must be improved.
  type: string
  inputBinding:
    prefix: --mcl-o
- id: mcl
  doc: <-opt[=val]> add '-opt [val]' to mcl command line, e.g. --mcl-v=all adds '-v
    all' to the mcl command line.
  type: boolean
  inputBinding:
    prefix: --mcl
- id: start_mcl
  doc: start running mcl with file-name.  optionally combines with the --xi option.
  type: File
  inputBinding:
    prefix: --start-mcl
- id: fmt_lump_size
  doc: collect clusters of size lq <num> in a single file.
  type: string
  inputBinding:
    prefix: --fmt-lump-size
- id: fmt_lump_count
  doc: make batches containing approximately <num> nodes.
  type: string
  inputBinding:
    prefix: --fmt-lump-count
- id: fmt_not_ab
  doc: tab file does not exist or should be ignored.
  type: boolean
  inputBinding:
    prefix: --fmt-notab
- id: fmt_tab
  doc: use tab file fname.
  type: string
  inputBinding:
    prefix: --fmt-tab
- id: fmt
  doc: <-opt[=val]>       add '-opt [val]' to clmformat command line.
  type: boolean
  inputBinding:
    prefix: --fmt
outputs: []
cwlVersion: v1.1
baseCommand:
- mclpipeline
