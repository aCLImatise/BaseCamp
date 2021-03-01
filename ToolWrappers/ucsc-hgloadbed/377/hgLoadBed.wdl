version 1.0

task HgLoadBed {
  input {
    Boolean? no_sort
    Boolean? no_bin
    String? old_table
    Directory? on_server
    File? sql_table
    String? rename_sql_table
    Boolean? trim_sql_table
    Int? type
    String? you_have_fields
    File? chrom_info
    Boolean? tab
    Boolean? has_bin
    Boolean? no_load
    Boolean? no_history
    Boolean? not_item_rgb
    Float? bed_graph
    Boolean? bed_detail
    Int? max_chrom_name_length
    File? tmpdir
    Boolean? no_name_ix
    Boolean? ignore_empty
    Boolean? no_strict
    Boolean? allow_start_equal_end
    Boolean? allow_negative_scores
    Boolean? custom_track_loader
    Int? fill_in_score
    Int? min_score
    String? verbose
    Int? dot_is_null
    Int? line_limit
    String database
    String track
    String files
  }
  command <<<
    hgLoadBed \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if (no_sort) then "-noSort" else ""} \
      ~{if (no_bin) then "-noBin" else ""} \
      ~{if defined(old_table) then ("-oldTable " +  '"' + old_table + '"') else ""} \
      ~{if defined(on_server) then ("-onServer " +  '"' + on_server + '"') else ""} \
      ~{if defined(sql_table) then ("-sqlTable " +  '"' + sql_table + '"') else ""} \
      ~{if defined(rename_sql_table) then ("-renameSqlTable " +  '"' + rename_sql_table + '"') else ""} \
      ~{if (trim_sql_table) then "-trimSqlTable" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(you_have_fields) then ("-as " +  '"' + you_have_fields + '"') else ""} \
      ~{if defined(chrom_info) then ("-chromInfo " +  '"' + chrom_info + '"') else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (has_bin) then "-hasBin" else ""} \
      ~{if (no_load) then "-noLoad" else ""} \
      ~{if (no_history) then "-noHistory" else ""} \
      ~{if (not_item_rgb) then "-notItemRgb" else ""} \
      ~{if defined(bed_graph) then ("-bedGraph " +  '"' + bed_graph + '"') else ""} \
      ~{if (bed_detail) then "-bedDetail" else ""} \
      ~{if defined(max_chrom_name_length) then ("-maxChromNameLength " +  '"' + max_chrom_name_length + '"') else ""} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if (no_name_ix) then "-noNameIx" else ""} \
      ~{if (ignore_empty) then "-ignoreEmpty" else ""} \
      ~{if (no_strict) then "-noStrict" else ""} \
      ~{if (allow_start_equal_end) then "-allowStartEqualEnd" else ""} \
      ~{if (allow_negative_scores) then "-allowNegativeScores" else ""} \
      ~{if (custom_track_loader) then "-customTrackLoader" else ""} \
      ~{if defined(fill_in_score) then ("-fillInScore " +  '"' + fill_in_score + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(dot_is_null) then ("-dotIsNull " +  '"' + dot_is_null + '"') else ""} \
      ~{if defined(line_limit) then ("-lineLimit " +  '"' + line_limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_sort: "don't sort (you better be sorting before this)"
    no_bin: "suppress bin field"
    old_table: "to existing table"
    on_server: "will speed things up if you're running in a directory that\\nthe mysql server can access."
    sql_table: "Create table from .sql file"
    rename_sql_table: "table created with -sqlTable to match track"
    trim_sql_table: "If sqlTable has n fields, and input has m fields, only load m fields, meaning the last n-m fields in the sqlTable are optional"
    type: "[+[P]] :\\nN is between 3 and 15,\\noptional (+) if extra \\\"bedPlus\\\" fields,\\noptional P specifies the number of extra fields. Not required, but preferred.\\nExamples: -type=bed6 or -type=bed6+ or -type=bed6+3\\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)\\nRecommended to use with -as option for better bedPlus validation."
    you_have_fields: "If you have extra \\\"bedPlus\\\" fields, it's great to put a definition\\nof each field in a row in AutoSql format here."
    chrom_info: "Specify chromInfo file to validate chrom names and sizes."
    tab: "Separate by tabs rather than space"
    has_bin: "Input bed file starts with a bin field."
    no_load: "- Do not load database and do not clean up tab files"
    no_history: "- Do not add history table comments (for custom tracks)"
    not_item_rgb: "- Do not parse column nine as r,g,b when commas seen (bacEnds)"
    bed_graph: "- wiggle graph column N of the input file as float dataValue\\n- bedGraph N is typically 4: -bedGraph=4"
    bed_detail: "- bedDetail format with id and text for hgc clicks\\n- requires tab and sqlTable options"
    max_chrom_name_length: "- specify max chromName length to avoid\\n- reference to chromInfo table"
    tmpdir: "- path to directory for creation of temporary .tab file\\n- which will be removed after loading"
    no_name_ix: "- no index for the name column (default creates index)"
    ignore_empty: "- no error on empty input file"
    no_strict: "- don't perform coord sanity checks\\n- by default we abort when: chromStart >= chromEnd"
    allow_start_equal_end: "- even when doing strict checks, allow\\nchromStart==chromEnd (zero-length e.g. insertion)"
    allow_negative_scores: "- sql definition of score column is int, not unsigned"
    custom_track_loader: "- turns on: -noNameIx, -noHistory, -ignoreEmpty,"
    fill_in_score: "- if every score value is zero, then use column 'colName' to fill in the score column (from minScore-1000)"
    min_score: "- minimum value for score field for -fillInScore option (default 100)"
    verbose: "- verbose level for extra information to STDERR"
    dot_is_null: "- if the specified field is a '.' the replace it with -1"
    line_limit: "- limit input file to this number of lines"
    database: ""
    track: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}