class: CommandLineTool
id: liftOver.cwl
inputs:
- id: in_min_match
  doc: Minimum ratio of bases that must remap. Default 0.95
  type: long
  inputBinding:
    prefix: -minMatch
- id: in_gff
  doc: File is in gff/gtf format.  Note that the gff lines are converted
  type: boolean
  inputBinding:
    prefix: -gff
- id: in_gene_pred
  doc: '- File is in genePred format'
  type: boolean
  inputBinding:
    prefix: -genePred
- id: in_sample
  doc: '- File is in sample format'
  type: boolean
  inputBinding:
    prefix: -sample
- id: in_bed_plus
  doc: '- File is bed N+ format (i.e. first N fields conform to bed format)'
  type: File
  inputBinding:
    prefix: -bedPlus
- id: in_positions
  doc: '- File is in browser "position" format'
  type: boolean
  inputBinding:
    prefix: -positions
- id: in_has_bin
  doc: '- File has bin value (used only with -bedPlus)'
  type: boolean
  inputBinding:
    prefix: -hasBin
- id: in_tab
  doc: '- Separate by tabs rather than space (used only with -bedPlus)'
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_p_slt
  doc: '- File is in psl format, map target side only'
  type: boolean
  inputBinding:
    prefix: -pslT
- id: in_ends
  doc: "- Lift the first and last N bases of each record and combine the\nresult.\
    \ This is useful for lifting large regions like BAC end pairs."
  type: string
  inputBinding:
    prefix: -ends
- id: in_min_blocks
  doc: "Minimum ratio of alignment blocks or exons that must map\n(default 1.00)"
  type: long
  inputBinding:
    prefix: -minBlocks
- id: in_fudge_thick
  doc: "(bed 12 or 12+ only) If thickStart/thickEnd is not mapped,\nuse the closest\
    \ mapped base.  Recommended if using\n-minBlocks."
  type: boolean
  inputBinding:
    prefix: -fudgeThick
- id: in_multiple
  doc: Allow multiple output regions
  type: boolean
  inputBinding:
    prefix: -multiple
- id: in_no_serial
  doc: In -multiple mode, do not put a serial number in the 5th BED column
  type: boolean
  inputBinding:
    prefix: -noSerial
- id: in_mincha_int
  doc: "Minimum chain size in target/query, when mapping\nto multiple output regions\
    \ (default 0, 0)"
  type: boolean
  inputBinding:
    prefix: -minChainT
- id: in_minsize_t
  doc: deprecated synonym for -minChainT (ENCODE compat.)
  type: boolean
  inputBinding:
    prefix: -minSizeT
- id: in_minsize_q
  doc: Min matching region size in query with -multiple.
  type: boolean
  inputBinding:
    prefix: -minSizeQ
- id: in_chain_table
  doc: "Used with -multiple, format is db.tablename,\nto extend chains from net (preserves\
    \ dups)"
  type: boolean
  inputBinding:
    prefix: -chainTable
- id: in_error_help
  doc: Explain error messages
  type: boolean
  inputBinding:
    prefix: -errorHelp
- id: in_separately_dot
  doc: It would be good to have a separate check after this
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- liftOver
