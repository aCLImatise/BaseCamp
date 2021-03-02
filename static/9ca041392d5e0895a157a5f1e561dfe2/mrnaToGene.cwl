class: CommandLineTool
id: mrnaToGene.cwl
inputs:
- id: in_db
  doc: '- get PSLs and CDS from this database, psl specifies the table.'
  type: string?
  inputBinding:
    prefix: -db
- id: in_cds_db
  doc: '- get CDS from this database, psl is a file.'
  type: File?
  inputBinding:
    prefix: -cdsDb
- id: in_cds_file
  doc: "- get CDS from this file, psl is a file.\nFile is tab separate with name as\
    \ the first column and\nNCBI CDS the second"
  type: File?
  inputBinding:
    prefix: -cdsFile
- id: in_insert_merge_size
  doc: "- Merge inserts (gaps) no larger than this many bases.\nA negative size disables\
    \ merging of blocks.  This differs from specifying zero\nin that adjacent blocks\
    \ will not be merged, allowing tracking of frame for\neach block. Defaults to\
    \ 8 unless -cdsMergeSize or -utrMergeSize are specified,\nif either of these are\
    \ specified, this option is ignored."
  type: long?
  inputBinding:
    prefix: -insertMergeSize
- id: in_small_insert_size
  doc: '- alias for -insertMergetSize'
  type: string?
  inputBinding:
    prefix: -smallInsertSize
- id: in_cds_merge_size
  doc: "=-1 - merge gaps in CDS no larger than this size.\nA negative values disables."
  type: boolean?
  inputBinding:
    prefix: -cdsMergeSize
- id: in_cds_merge_mod_three
  doc: '- only merge CDS gaps if they mod 3'
  type: boolean?
  inputBinding:
    prefix: -cdsMergeMod3
- id: in_utr_merge_size
  doc: "=-1  - merge gaps in UTR no larger than this size.\nA negative values disables."
  type: boolean?
  inputBinding:
    prefix: -utrMergeSize
- id: in_require_utr
  doc: "- Drop sequences that don't have both 5' and 3' UTR annotated."
  type: boolean?
  inputBinding:
    prefix: -requireUtr
- id: in_gene_pred_ext
  doc: '- create a extended genePred, including frame information.'
  type: boolean?
  inputBinding:
    prefix: -genePredExt
- id: in_all_cds
  doc: '- consider PSL to be all CDS.'
  type: boolean?
  inputBinding:
    prefix: -allCds
- id: in_no_cds
  doc: '- consider PSL to not contain any CDS.'
  type: boolean?
  inputBinding:
    prefix: -noCds
- id: in_keep_invalid
  doc: '- Keep sequences with invalid CDS.'
  type: boolean?
  inputBinding:
    prefix: -keepInvalid
- id: in_quiet
  doc: "- Don't print print info about dropped sequences."
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_ignore_uniq_suffix
  doc: "- ignore all characters after last `-' in qName\nwhen looking up CDS. Used\
    \ when a suffix has been added to make qName\nunique.  It is not removed from\
    \ the name in the genePred.\n"
  type: boolean?
  inputBinding:
    prefix: -ignoreUniqSuffix
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mrnaToGene
