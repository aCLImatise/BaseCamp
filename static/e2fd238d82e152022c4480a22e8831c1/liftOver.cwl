class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/liftOver.cwl
inputs:
- id: min_match
  doc: Minimum ratio of bases that must remap. Default 0.95
  type: string
  inputBinding:
    prefix: -minMatch
- id: gff
  doc: File is in gff/gtf format.  Note that the gff lines are converted separately.  It
    would be good to have a separate check after this that the lines that make up
    a gene model still make a plausible gene after liftOver
  type: boolean
  inputBinding:
    prefix: -gff
- id: gene_pred
  doc: '- File is in genePred format'
  type: boolean
  inputBinding:
    prefix: -genePred
- id: sample
  doc: '- File is in sample format'
  type: boolean
  inputBinding:
    prefix: -sample
- id: bed_plus
  doc: '- File is bed N+ format (i.e. first N fields conform to bed format)'
  type: string
  inputBinding:
    prefix: -bedPlus
- id: positions
  doc: '- File is in browser "position" format'
  type: boolean
  inputBinding:
    prefix: -positions
- id: has_bin
  doc: '- File has bin value (used only with -bedPlus)'
  type: boolean
  inputBinding:
    prefix: -hasBin
- id: tab
  doc: '- Separate by tabs rather than space (used only with -bedPlus)'
  type: boolean
  inputBinding:
    prefix: -tab
- id: p_slt
  doc: '- File is in psl format, map target side only'
  type: boolean
  inputBinding:
    prefix: -pslT
- id: ends
  doc: '- Lift the first and last N bases of each record and combine the result. This
    is useful for lifting large regions like BAC end pairs.'
  type: string
  inputBinding:
    prefix: -ends
- id: min_blocks
  doc: Minimum ratio of alignment blocks or exons that must map (default 1.00)
  type: string
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
- id: old_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: map_dot_chain
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
outputs: []
cwlVersion: v1.1
baseCommand:
- liftOver
