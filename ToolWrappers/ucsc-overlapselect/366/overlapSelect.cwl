class: CommandLineTool
id: overlapSelect.cwl
inputs:
- id: in_select_fmt
  doc: "- specify selectFile format:\npsl - PSL format (default for *.psl files).\n\
    pslq - PSL format, using query instead of target\ngenePred - genePred format (default\
    \ for *.gp or\n*.genePred files).\nbed - BED format (default for *.bed files).\n\
    If BED doesn't have blocks, the bed range is used.\nchain - chain file format\
    \ (default from .chain files)\nchainq - chain file format, using query instead\
    \ of target"
  type: File
  inputBinding:
    prefix: -selectFmt
- id: in_select_coord_cols
  doc: "- selectFile is tab-separate with coordinates\nas described by spec, which\
    \ is one of:\no chromCol - chrom in this column followed by start and end.\no\
    \ chromCol,startCol,endCol,strandCol,name - chrom, start, end, and\nstrand in\
    \ specified columns. Columns can be omitted from the end\nor left empty to not\
    \ specify.\nNOTE: column numbers are zero-based"
  type: string
  inputBinding:
    prefix: -selectCoordCols
- id: in_select_cds
  doc: '- Use only CDS in the selectFile'
  type: boolean
  inputBinding:
    prefix: -selectCds
- id: in_select_range
  doc: "- Use entire range instead of blocks from records in\nthe selectFile."
  type: boolean
  inputBinding:
    prefix: -selectRange
- id: in_in_fmt
  doc: '- specify inFile format, same values as -selectFmt.'
  type: string
  inputBinding:
    prefix: -inFmt
- id: in_in_coord_cols
  doc: "- inFile is tab-separate with coordinates specified by\nspec, in format described\
    \ above."
  type: string
  inputBinding:
    prefix: -inCoordCols
- id: in_in_cds
  doc: '- Use only CDS in the inFile'
  type: boolean
  inputBinding:
    prefix: -inCds
- id: in_in_range
  doc: '- Use entire range instead of blocks of records in the inFile.'
  type: boolean
  inputBinding:
    prefix: -inRange
- id: in_nonoverlapping
  doc: '- select non-overlapping instead of overlapping records'
  type: boolean
  inputBinding:
    prefix: -nonOverlapping
- id: in_strand
  doc: '- must be on the same strand to be considered overlapping'
  type: boolean
  inputBinding:
    prefix: -strand
- id: in_opposite_strand
  doc: '- must be on the opposite strand to be considered overlapping'
  type: boolean
  inputBinding:
    prefix: -oppositeStrand
- id: in_exclude_self
  doc: "- don't compare records with the same coordinates and name.\nWarning: using\
    \ only one of -inCds or -selectCds will result in different\ncoordinates for the\
    \ same record."
  type: boolean
  inputBinding:
    prefix: -excludeSelf
- id: in_id_match
  doc: '- only select overlapping records if they have the same id'
  type: boolean
  inputBinding:
    prefix: -idMatch
- id: in_aggregate
  doc: "- instead of computing overlap bases on individual select entries,\ncompute\
    \ it based on the total number of inFile bases overlap by selectFile\nrecords.\
    \ -overlapSimilarity and -mergeOutput will not work with\nthis option."
  type: boolean
  inputBinding:
    prefix: -aggregate
- id: in_overlap_threshold
  doc: "- minimum fraction of an inFile record that\nmust be overlapped by a single\
    \ select record to be considered\noverlapping.  Note that this is only coverage\
    \ by a single select\nrecord, not total coverage."
  type: long
  inputBinding:
    prefix: -overlapThreshold
- id: in_overlap_threshold_ceil
  doc: "- select only inFile records with less than\nthis amount of overlap with a\
    \ single record, provided they are selected\nby other criteria."
  type: long
  inputBinding:
    prefix: -overlapThresholdCeil
- id: in_overlap_similarity
  doc: "- minimum fraction bases in inFile and selectFile\nrecords that overlap the\
    \ same genomic locations.  This is computed\nby (2*overlapBase)/(inFileBase+selectFileBases).\n\
    Note that this is only coverage by a single select record and this\nis bidirectional\
    \ inFile and selectFile must overlap by this\namount.  A value of 1.0 will select\
    \ identical records (or CDS if\nboth CDS options are specified.  Not currently\
    \ supported with\n-aggregate."
  type: long
  inputBinding:
    prefix: -overlapSimilarity
- id: in_overlap_similarity_ceil
  doc: "- select only inFile records with less than this\namount of similarity with\
    \ a single record. provided they are selected by\nother criteria."
  type: long
  inputBinding:
    prefix: -overlapSimilarityCeil
- id: in_overlap_bases
  doc: =-1 - minimum number of bases of overlap, < 0 disables.
  type: boolean
  inputBinding:
    prefix: -overlapBases
- id: in_stats_output
  doc: "- output overlap statistics instead of selected records.\nIf no overlap criteria\
    \ is specified, all overlapping entries are\nreported, Otherwise only the pairs\
    \ passing the criteria are\nreported. This results in a tab-separated file with\
    \ the columns:\ninId selectId inOverlap selectOverlap overBases\nWhere inOverlap\
    \ is the fraction of the inFile record overlapped by\nthe selectFile record and\
    \ selectOverlap is the fraction of the\nselect record overlap by inFile records.\
    \  With -aggregate, output\nis:\ninId inOverlap inOverBases inBases"
  type: File
  inputBinding:
    prefix: -statsOutput
- id: in_stats_output_all
  doc: "- like -statsOutput, however output all inFile records,\nincluding those that\
    \ are not overlapped."
  type: boolean
  inputBinding:
    prefix: -statsOutputAll
- id: in_stats_output_both
  doc: "- like -statsOutput, however output all selectFile and\ninFile records, including\
    \ those that are not overlapped."
  type: boolean
  inputBinding:
    prefix: -statsOutputBoth
- id: in_merge_output
  doc: "- output file with be a merge of the input file with the\nselectFile records\
    \ that selected it.  The format is\ninRec<tab>selectRec.\nif multiple select records\
    \ hit, inRec is repeated. This will increase\nthe memory required. Not supported\
    \ with -nonOverlapping or -aggregate."
  type: boolean
  inputBinding:
    prefix: -mergeOutput
- id: in_id_output
  doc: "- output a tab-separated file of pairs of\ninId selectId\nwith -aggregate,\
    \ only a single column of inId is written"
  type: File
  inputBinding:
    prefix: -idOutput
- id: in_dropped
  doc: '- output rows that were dropped to this file.'
  type: File
  inputBinding:
    prefix: -dropped
- id: in_verbose
  doc: '- verbose > 1 prints some details,'
  type: long
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stats_output
  doc: "- output overlap statistics instead of selected records.\nIf no overlap criteria\
    \ is specified, all overlapping entries are\nreported, Otherwise only the pairs\
    \ passing the criteria are\nreported. This results in a tab-separated file with\
    \ the columns:\ninId selectId inOverlap selectOverlap overBases\nWhere inOverlap\
    \ is the fraction of the inFile record overlapped by\nthe selectFile record and\
    \ selectOverlap is the fraction of the\nselect record overlap by inFile records.\
    \  With -aggregate, output\nis:\ninId inOverlap inOverBases inBases"
  type: File
  outputBinding:
    glob: $(inputs.in_stats_output)
- id: out_id_output
  doc: "- output a tab-separated file of pairs of\ninId selectId\nwith -aggregate,\
    \ only a single column of inId is written"
  type: File
  outputBinding:
    glob: $(inputs.in_id_output)
- id: out_dropped
  doc: '- output rows that were dropped to this file.'
  type: File
  outputBinding:
    glob: $(inputs.in_dropped)
cwlVersion: v1.1
baseCommand:
- overlapSelect
