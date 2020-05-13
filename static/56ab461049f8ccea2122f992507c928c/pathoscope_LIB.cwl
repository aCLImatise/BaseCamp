class: CommandLineTool
id: pathoscope_LIB.cwl
inputs:
- id: genome_file
  doc: Specify reference genome(Download ftp://ftp.ncbi.nih.gov/blast/db/FASTA/nt.gz)
  type: string
  inputBinding:
    prefix: -genomeFile
- id: taxonid_s
  doc: Specify taxon ids of your interest with comma separated (if you have multiple
    taxon ids). If you do not specify this option, it will work on all entries in
    the reference file. For taxonomy id lookup, refer to http://www.ncbi.nlm.nih.gov/taxonomy
  type: string
  inputBinding:
    prefix: -taxonIds
- id: exclude_taxonid_s
  doc: Specify taxon ids to exclude with comma separated (if you have multiple taxon
    ids to exclude).
  type: string
  inputBinding:
    prefix: -excludeTaxonIds
- id: nodes_c
  doc: Do not keep an additional description in original fasta seq header.Depending
    on NGS aligner, a long sequence header may slow down its mapping process.
  type: boolean
  inputBinding:
    prefix: --noDesc
- id: sub_tax
  doc: To include all sub taxonomies under the query taxonomy id. e.g., if you set
    -t 4751 --subtax, it will cover all sub taxonomies under taxon id 4751 (fungi).
  type: boolean
  inputBinding:
    prefix: --subTax
- id: online
  doc: To enable online searching in case you cannot find a correct taxonomy id for
    a given gi. When there are many entries in nt whose gi is invalid, this option
    may slow down the overall process.
  type: boolean
  inputBinding:
    prefix: --online
- id: dbhost
  doc: specify hostname running mysql if you want to use mysql instead of hash method
    in mapping gi to taxonomy id
  type: string
  inputBinding:
    prefix: -dbhost
- id: db_port
  doc: provide mysql server port if different from default (3306)
  type: string
  inputBinding:
    prefix: -dbport
- id: dbuser
  doc: user name to access mysql
  type: string
  inputBinding:
    prefix: -dbuser
- id: db_passwd
  doc: provide password associate with user
  type: string
  inputBinding:
    prefix: -dbpasswd
- id: db
  doc: 'mysql pathoscope database name (default: pathodb)'
  type: string
  inputBinding:
    prefix: -db
- id: outdir
  doc: Output Directory (Default=. (current directory))
  type: string
  inputBinding:
    prefix: -outDir
- id: out_prefix
  doc: specify an output prefix to name your target database
  type: string
  inputBinding:
    prefix: -outPrefix
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- LIB
