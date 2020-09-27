version 1.0

task HgLoadBed {
  input {
    Boolean? no_sort
    String database
    String track
    String files
  }
  command <<<
    hgLoadBed \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if (no_sort) then "-noSort" else ""}
  >>>
  parameter_meta {
    no_sort: "don't sort (you better be sorting before this)\\n-noBin   suppress bin field\\n-oldTable add to existing table\\n-onServer This will speed things up if you're running in a directory that\\nthe mysql server can access.\\n-sqlTable=table.sql Create table from .sql file\\n-renameSqlTable Rename table created with -sqlTable to match track\\n-trimSqlTable   If sqlTable has n fields, and input has m fields, only load m fields, meaning the last n-m fields in the sqlTable are optional\\n-type=bedN[+[P]] :\\nN is between 3 and 15,\\noptional (+) if extra \\\"bedPlus\\\" fields,\\noptional P specifies the number of extra fields. Not required, but preferred.\\nExamples: -type=bed6 or -type=bed6+ or -type=bed6+3\\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)\\nRecommended to use with -as option for better bedPlus validation.\\n-as=fields.as   If you have extra \\\"bedPlus\\\" fields, it's great to put a definition\\nof each field in a row in AutoSql format here.\\n-chromInfo=file.txt    Specify chromInfo file to validate chrom names and sizes.\\n-tab       Separate by tabs rather than space\\n-hasBin    Input bed file starts with a bin field.\\n-noLoad     - Do not load database and do not clean up tab files\\n-noHistory  - Do not add history table comments (for custom tracks)\\n-notItemRgb - Do not parse column nine as r,g,b when commas seen (bacEnds)\\n-bedGraph=N - wiggle graph column N of the input file as float dataValue\\n- bedGraph N is typically 4: -bedGraph=4\\n-bedDetail  - bedDetail format with id and text for hgc clicks\\n- requires tab and sqlTable options\\n-maxChromNameLength=N  - specify max chromName length to avoid\\n- reference to chromInfo table\\n-tmpDir=<path>  - path to directory for creation of temporary .tab file\\n- which will be removed after loading\\n-noNameIx  - no index for the name column (default creates index)\\n-ignoreEmpty  - no error on empty input file\\n-noStrict  - don't perform coord sanity checks\\n- by default we abort when: chromStart >= chromEnd\\n-allowStartEqualEnd  - even when doing strict checks, allow\\nchromStart==chromEnd (zero-length e.g. insertion)\\n-allowNegativeScores  - sql definition of score column is int, not unsigned\\n-customTrackLoader  - turns on: -noNameIx, -noHistory, -ignoreEmpty,\\n-allowStartEqualEnd, -allowNegativeScores, -verbose=0\\nPlus, this turns on a 20 minute time-out exit.\\n-fillInScore=colName - if every score value is zero, then use column 'colName' to fill in the score column (from minScore-1000)\\n-minScore=N - minimum value for score field for -fillInScore option (default 100)\\n-verbose=N - verbose level for extra information to STDERR\\n-dotIsNull=N - if the specified field is a '.' the replace it with -1\\n-lineLimit=N - limit input file to this number of lines\\n"
    database: ""
    track: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}