class: CommandLineTool
id: build_genomeBG.cwl
inputs:
- id: in_db
  doc: "Genome of UCSC (eg hg18). If -d (--db) is not given,\nthis script searches\
    \ for a local sqlite3 referenced by\n-g (--gt). WARNING: MySQLdb must be installed\
    \ to use\nthe tables of UCSC."
  type: long
  inputBinding:
    prefix: --db
- id: in_gt
  doc: "Name of the gene annotation table (or local sqlite3\nfile) (eg refGene or\
    \ knownGene). If -d (--db) is\ngiven, build_genomeBG will connect to UCSC and\n\
    download the specified gene table. Otherwise,\nbuild_genomeBG search for a local\
    \ sqlite3 file with\nthe name."
  type: File
  inputBinding:
    prefix: --gt
- id: in_wig
  doc: "WIG file needed to obtain genome locations in BG\nannotation. VariableStep\
    \ and fixedWig files are\naccepted."
  type: File
  inputBinding:
    prefix: --wig
- id: in_ot
  doc: "Output sqlite3 db file name. The gene annotation table\nread from the local\
    \ sqlite3 file or UCSC DB will be\nsaved in a table named as 'GeneTable' and the\
    \ computed\ngenome bg annotation will be saved in two tables named\nas 'GenomeBGS'\
    \ and 'GenomeBGP. If this option is not\ngiven, this script generates a sqlite3\
    \ file with the\nsame name as given through -g (--gt). WARNING! When an\nexisting\
    \ local sqlite3 file is opened and saved as the\nsame name, the tables in the\
    \ file will be overwritten."
  type: File
  inputBinding:
    prefix: --ot
- id: in_promoter
  doc: "Maximum promoter size to consider for genome bg\nannotation. This must be\
    \ >= 1000bp. Any value less\nthan 1000bp will be set to 1000bp. DEFAULT: 10000bp"
  type: long
  inputBinding:
    prefix: --promoter
- id: in_bi_promoter
  doc: "Maximum Bidirectional promoter size to consider for\ngenome bg annotation.\
    \ This must be >= 1000bp. Any\nvalue less than 1000bp will be set to 1000bp. DEFAULT:\n\
    20000bp"
  type: long
  inputBinding:
    prefix: --bipromoter
- id: in_downstream
  doc: "Maximum immediate downstream size to consider for\ngenome bg annotation. This\
    \ must be >= 1000bp. Any\nvalue less than 1000bp will be set to 1000bp. DEFAULT:\n\
    10000bp"
  type: long
  inputBinding:
    prefix: --downstream
- id: in_binsize
  doc: "Binsize with which to bin promoter, bidirectional\npromoter, and immediate\
    \ downstream sizes. In each bin,\nthe percentage of genome will be calculated.\n\
    DEFAULT=1000bp\n"
  type: long
  inputBinding:
    prefix: --binsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ot
  doc: "Output sqlite3 db file name. The gene annotation table\nread from the local\
    \ sqlite3 file or UCSC DB will be\nsaved in a table named as 'GeneTable' and the\
    \ computed\ngenome bg annotation will be saved in two tables named\nas 'GenomeBGS'\
    \ and 'GenomeBGP. If this option is not\ngiven, this script generates a sqlite3\
    \ file with the\nsame name as given through -g (--gt). WARNING! When an\nexisting\
    \ local sqlite3 file is opened and saved as the\nsame name, the tables in the\
    \ file will be overwritten."
  type: File
  outputBinding:
    glob: $(inputs.in_ot)
cwlVersion: v1.1
baseCommand:
- build_genomeBG
