class: CommandLineTool
id: hgLoadBed.cwl
inputs:
- id: in_no_sort
  doc: don't sort (you better be sorting before this)
  type: boolean?
  inputBinding:
    prefix: -noSort
- id: in_no_bin
  doc: suppress bin field
  type: boolean?
  inputBinding:
    prefix: -noBin
- id: in_old_table
  doc: to existing table
  type: string?
  inputBinding:
    prefix: -oldTable
- id: in_on_server
  doc: "will speed things up if you're running in a directory that\nthe mysql server\
    \ can access."
  type: Directory?
  inputBinding:
    prefix: -onServer
- id: in_sql_table
  doc: Create table from .sql file
  type: File?
  inputBinding:
    prefix: -sqlTable
- id: in_rename_sql_table
  doc: table created with -sqlTable to match track
  type: string?
  inputBinding:
    prefix: -renameSqlTable
- id: in_trim_sql_table
  doc: If sqlTable has n fields, and input has m fields, only load m fields, meaning
    the last n-m fields in the sqlTable are optional
  type: boolean?
  inputBinding:
    prefix: -trimSqlTable
- id: in_type
  doc: "[+[P]] :\nN is between 3 and 15,\noptional (+) if extra \"bedPlus\" fields,\n\
    optional P specifies the number of extra fields. Not required, but preferred.\n\
    Examples: -type=bed6 or -type=bed6+ or -type=bed6+3\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)\n\
    Recommended to use with -as option for better bedPlus validation."
  type: long?
  inputBinding:
    prefix: -type
- id: in_as
  doc: "If you have extra \"bedPlus\" fields, it's great to put a definition\nof each\
    \ field in a row in AutoSql format here."
  type: string?
  inputBinding:
    prefix: -as
- id: in_chrom_info
  doc: Specify chromInfo file to validate chrom names and sizes.
  type: File?
  inputBinding:
    prefix: -chromInfo
- id: in_tab
  doc: Separate by tabs rather than space
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_has_bin
  doc: Input bed file starts with a bin field.
  type: boolean?
  inputBinding:
    prefix: -hasBin
- id: in_no_load
  doc: '- Do not load database and do not clean up tab files'
  type: boolean?
  inputBinding:
    prefix: -noLoad
- id: in_no_history
  doc: '- Do not add history table comments (for custom tracks)'
  type: boolean?
  inputBinding:
    prefix: -noHistory
- id: in_not_item_rgb
  doc: '- Do not parse column nine as r,g,b when commas seen (bacEnds)'
  type: boolean?
  inputBinding:
    prefix: -notItemRgb
- id: in_bed_graph
  doc: "- wiggle graph column N of the input file as float dataValue\n- bedGraph N\
    \ is typically 4: -bedGraph=4"
  type: double?
  inputBinding:
    prefix: -bedGraph
- id: in_bed_detail
  doc: "- bedDetail format with id and text for hgc clicks\n- requires tab and sqlTable\
    \ options"
  type: boolean?
  inputBinding:
    prefix: -bedDetail
- id: in_max_chrom_name_length
  doc: "- specify max chromName length to avoid\n- reference to chromInfo table"
  type: long?
  inputBinding:
    prefix: -maxChromNameLength
- id: in_tmpdir
  doc: "- path to directory for creation of temporary .tab file\n- which will be removed\
    \ after loading"
  type: File?
  inputBinding:
    prefix: -tmpDir
- id: in_no_name_ix
  doc: '- no index for the name column (default creates index)'
  type: boolean?
  inputBinding:
    prefix: -noNameIx
- id: in_ignore_empty
  doc: '- no error on empty input file'
  type: boolean?
  inputBinding:
    prefix: -ignoreEmpty
- id: in_no_strict
  doc: "- don't perform coord sanity checks\n- by default we abort when: chromStart\
    \ >= chromEnd"
  type: boolean?
  inputBinding:
    prefix: -noStrict
- id: in_allow_start_equal_end
  doc: "- even when doing strict checks, allow\nchromStart==chromEnd (zero-length\
    \ e.g. insertion)"
  type: boolean?
  inputBinding:
    prefix: -allowStartEqualEnd
- id: in_allow_negative_scores
  doc: '- sql definition of score column is int, not unsigned'
  type: boolean?
  inputBinding:
    prefix: -allowNegativeScores
- id: in_custom_track_loader
  doc: '- turns on: -noNameIx, -noHistory, -ignoreEmpty,'
  type: boolean?
  inputBinding:
    prefix: -customTrackLoader
- id: in_fill_in_score
  doc: "- if every score value is zero, then use column 'colName' to fill in the score\
    \ column (from minScore-1000)"
  type: long?
  inputBinding:
    prefix: -fillInScore
- id: in_min_score
  doc: '- minimum value for score field for -fillInScore option (default 100)'
  type: long?
  inputBinding:
    prefix: -minScore
- id: in_verbose
  doc: '- verbose level for extra information to STDERR'
  type: string?
  inputBinding:
    prefix: -verbose
- id: in_dot_is_null
  doc: "- if the specified field is a '.' the replace it with -1"
  type: long?
  inputBinding:
    prefix: -dotIsNull
- id: in_line_limit
  doc: '- limit input file to this number of lines'
  type: long?
  inputBinding:
    prefix: -lineLimit
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hgLoadBed
