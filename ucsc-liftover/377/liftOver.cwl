class: CommandLineTool
id: liftOver.cwl
inputs:
- id: old_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: map_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: new_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: unmapped
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: min_blocks
  doc: =0.N Minimum ratio of alignment blocks or exons that must map (default 1.00)
  type: boolean
  inputBinding:
    prefix: -minBlocks
- id: fudge_thick
  doc: (bed 12 or 12+ only) If thickStart/thickEnd is not mapped, use the closest
    mapped base.  Recommended if using  -minBlocks.
  type: boolean
  inputBinding:
    prefix: -fudgeThick
- id: multiple
  doc: Allow multiple output regions
  type: boolean
  inputBinding:
    prefix: -multiple
- id: no_serial
  doc: In -multiple mode, do not put a serial number in the 5th BED column
  type: boolean
  inputBinding:
    prefix: -noSerial
- id: mincha_int
  doc: Minimum chain size in target/query, when mapping to multiple output regions
    (default 0, 0)
  type: boolean
  inputBinding:
    prefix: -minChainT
- id: minsize_t
  doc: deprecated synonym for -minChainT (ENCODE compat.)
  type: boolean
  inputBinding:
    prefix: -minSizeT
- id: minsize_q
  doc: Min matching region size in query with -multiple.
  type: boolean
  inputBinding:
    prefix: -minSizeQ
- id: chain_table
  doc: Used with -multiple, format is db.tablename, to extend chains from net (preserves
    dups)
  type: boolean
  inputBinding:
    prefix: -chainTable
- id: error_help
  doc: Explain error messages
  type: boolean
  inputBinding:
    prefix: -errorHelp
outputs: []
cwlVersion: v1.1
baseCommand:
- liftOver
