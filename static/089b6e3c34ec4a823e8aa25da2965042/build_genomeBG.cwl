class: CommandLineTool
id: build_genomeBG.cwl
inputs:
- id: db
  doc: 'Genome of UCSC (eg hg18). If -d (--db) is not given, this script searches
    for a local sqlite3 referenced by -g (--gt). WARNING: MySQLdb must be installed
    to use the tables of UCSC.'
  type: string
  inputBinding:
    prefix: --db
- id: gt
  doc: Name of the gene annotation table (or local sqlite3 file) (eg refGene or knownGene).
    If -d (--db) is given, build_genomeBG will connect to UCSC and download the specified
    gene table. Otherwise, build_genomeBG search for a local sqlite3 file with the
    name.
  type: string
  inputBinding:
    prefix: --gt
- id: wig
  doc: WIG file needed to obtain genome locations in BG annotation. VariableStep and
    fixedWig files are accepted.
  type: string
  inputBinding:
    prefix: --wig
- id: ot
  doc: Output sqlite3 db file name. The gene annotation table read from the local
    sqlite3 file or UCSC DB will be saved in a table named as 'GeneTable' and the
    computed genome bg annotation will be saved in two tables named as 'GenomeBGS'
    and 'GenomeBGP. If this option is not given, this script generates a sqlite3 file
    with the same name as given through -g (--gt). WARNING! When an existing local
    sqlite3 file is opened and saved as the same name, the tables in the file will
    be overwritten.
  type: string
  inputBinding:
    prefix: --ot
- id: promoter
  doc: 'Maximum promoter size to consider for genome bg annotation. This must be >=
    1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT: 10000bp'
  type: string
  inputBinding:
    prefix: --promoter
- id: bi_promoter
  doc: 'Maximum Bidirectional promoter size to consider for genome bg annotation.
    This must be >= 1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT:
    20000bp'
  type: string
  inputBinding:
    prefix: --bipromoter
- id: downstream
  doc: 'Maximum immediate downstream size to consider for genome bg annotation. This
    must be >= 1000bp. Any value less than 1000bp will be set to 1000bp. DEFAULT:
    10000bp'
  type: string
  inputBinding:
    prefix: --downstream
- id: binsize
  doc: Binsize with which to bin promoter, bidirectional promoter, and immediate downstream
    sizes. In each bin, the percentage of genome will be calculated. DEFAULT=1000bp
  type: string
  inputBinding:
    prefix: --binsize
outputs: []
cwlVersion: v1.1
baseCommand:
- build_genomeBG
