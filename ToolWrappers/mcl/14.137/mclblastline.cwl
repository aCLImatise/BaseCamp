class: CommandLineTool
id: mclblastline.cwl
inputs:
- id: in_what_if
  doc: shows only what would be done.
  type: boolean?
  inputBinding:
    prefix: --whatif
- id: in_start_assemble
  doc: skip the parse step, assume needed files exist already.
  type: boolean?
  inputBinding:
    prefix: --start-assemble
- id: in_start_mcl
  doc: start running mcl immediately, as above.
  type: boolean?
  inputBinding:
    prefix: --start-mcl
- id: in_start_format
  doc: only (re)do the formatting stage, as above.
  type: boolean?
  inputBinding:
    prefix: --start-format
- id: in_prepare_mcl
  doc: create the input file for mcl, then quit.
  type: boolean?
  inputBinding:
    prefix: --prepare-mcl
- id: in_xi
  doc: strip <suf> from file-name for use as base stem.
  type: File?
  inputBinding:
    prefix: --xi
- id: in_xo_dat
  doc: attach <suf> to parse result.
  type: string?
  inputBinding:
    prefix: --xo-dat
- id: in_xo_ass
  doc: attach <suf> to mcxassemble result.
  type: string?
  inputBinding:
    prefix: --xo-ass
- id: in_xo_mcl
  doc: use <suf> as mcl result attachment.
  type: string?
  inputBinding:
    prefix: --xo-mcl
- id: in_x_a_mcl
  doc: append to mcl suffix.
  type: string?
  inputBinding:
    prefix: --xa-mcl
- id: in_xe_mcl
  doc: append to mcl file name.
  type: File?
  inputBinding:
    prefix: --xe-mcl
- id: in_xo_fmt
  doc: "attach <suf> to clmformat result.\nmnemonics: eXtension In, Out, Append, Extra."
  type: string?
  inputBinding:
    prefix: --xo-fmt
- id: in_parser
  doc: name of parse script
  type: string?
  inputBinding:
    prefix: --parser
- id: in_parser_tag
  doc: tag of options to pass to parse script.
  type: string?
  inputBinding:
    prefix: --parser-tag
- id: in_ass_repeat
  doc: str in <add|max|mul|left|right>
  type: long?
  inputBinding:
    prefix: --ass-repeat
- id: in_ass_no_map
  doc: map file does not exist or should be ignored.
  type: boolean?
  inputBinding:
    prefix: --ass-nomap
- id: in_ass
  doc: <-opt[=val]> add '-opt [val]' to mcxassemble command line.
  type: boolean?
  inputBinding:
    prefix: --ass
- id: in_mcl_te
  doc: number of expansion threads.
  type: long?
  inputBinding:
    prefix: --mcl-te
- id: in_inflation_value_mcl
  doc: inflation value, MAIN mcl handle.
  type: double?
  inputBinding:
    prefix: --mcl-I
- id: in_initial_inflation_value
  doc: initial inflation value.
  type: double?
  inputBinding:
    prefix: --mcl-i
- id: in_mcl_l
  doc: initial loop length.
  type: long?
  inputBinding:
    prefix: --mcl-l
- id: in_mcl_pi
  doc: pre-inflation value.
  type: double?
  inputBinding:
    prefix: --mcl-pi
- id: in_mcl_c
  doc: center value.
  type: double?
  inputBinding:
    prefix: --mcl-c
- id: in_mcl_scheme
  doc: i in 1..5, resource allocation level.
  type: double?
  inputBinding:
    prefix: --mcl-scheme
- id: in_mcl_o
  doc: if you *need* to use this, I must be improved.
  type: string?
  inputBinding:
    prefix: --mcl-o
- id: in_mcl
  doc: <-opt[=val]> add '-opt [val]' to mcl command line, e.g.
  type: boolean?
  inputBinding:
    prefix: --mcl
- id: in_mcl_v
  doc: adds '-v all' to the mcl command line.
  type: string?
  inputBinding:
    prefix: --mcl-v
- id: in_fmt_lump_size
  doc: collect clusters of size lq <num> in a single file.
  type: long?
  inputBinding:
    prefix: --fmt-lump-size
- id: in_fmt_lump_count
  doc: make batches containing approximately <num> nodes.
  type: long?
  inputBinding:
    prefix: --fmt-lump-count
- id: in_fmt_not_ab
  doc: tab file does not exist or should be ignored.
  type: boolean?
  inputBinding:
    prefix: --fmt-notab
- id: in_fmt_tab
  doc: use tab file fname.
  type: File?
  inputBinding:
    prefix: --fmt-tab
- id: in_fmt
  doc: <-opt[=val]>       add '-opt [val]' to clmformat command line.
  type: boolean?
  inputBinding:
    prefix: --fmt
- id: in_xi_dat
  doc: should not be used, as it encapsulated by the mclpipeline --xi
  type: string?
  inputBinding:
    prefix: --xi-dat
- id: in_mcl_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mclblastline
