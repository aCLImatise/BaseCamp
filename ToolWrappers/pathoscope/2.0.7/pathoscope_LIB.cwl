class: CommandLineTool
id: pathoscope_LIB.cwl
inputs:
- id: in_genome_file
  doc: "Specify reference genome(Download\nftp://ftp.ncbi.nih.gov/blast/db/FASTA/nt.gz)"
  type: string?
  inputBinding:
    prefix: -genomeFile
- id: in_taxonid_s
  doc: "Specify taxon ids of your interest with comma\nseparated (if you have multiple\
    \ taxon ids). If you do\nnot specify this option, it will work on all entries\n\
    in the reference file. For taxonomy id lookup, refer\nto http://www.ncbi.nlm.nih.gov/taxonomy"
  type: File?
  inputBinding:
    prefix: -taxonIds
- id: in_exclude_taxonid_s
  doc: "Specify taxon ids to exclude with comma separated (if\nyou have multiple taxon\
    \ ids to exclude)."
  type: string?
  inputBinding:
    prefix: -excludeTaxonIds
- id: in_nodes_c
  doc: "Do not keep an additional description in original\nfasta seq header.Depending\
    \ on NGS aligner, a long\nsequence header may slow down its mapping process."
  type: boolean?
  inputBinding:
    prefix: --noDesc
- id: in_sub_tax
  doc: "To include all sub taxonomies under the query taxonomy\nid. e.g., if you set\
    \ -t 4751 --subtax, it will cover\nall sub taxonomies under taxon id 4751 (fungi)."
  type: boolean?
  inputBinding:
    prefix: --subTax
- id: in_online
  doc: "To enable online searching in case you cannot find a\ncorrect taxonomy id\
    \ for a given gi. When there are\nmany entries in nt whose gi is invalid, this\
    \ option\nmay slow down the overall process."
  type: boolean?
  inputBinding:
    prefix: --online
- id: in_dbhost
  doc: "specify hostname running mysql if you want to use\nmysql instead of hash method\
    \ in mapping gi to taxonomy\nid"
  type: string?
  inputBinding:
    prefix: -dbhost
- id: in_db_port
  doc: "provide mysql server port if different from default\n(3306)"
  type: long?
  inputBinding:
    prefix: -dbport
- id: in_dbuser
  doc: user name to access mysql
  type: string?
  inputBinding:
    prefix: -dbuser
- id: in_db_passwd
  doc: provide password associate with user
  type: string?
  inputBinding:
    prefix: -dbpasswd
- id: in_db
  doc: 'mysql pathoscope database name (default: pathodb)'
  type: string?
  inputBinding:
    prefix: -db
- id: in_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory?
  inputBinding:
    prefix: -outDir
- id: in_out_prefix
  doc: "specify an output prefix to name your target database\n"
  type: string?
  inputBinding:
    prefix: -outPrefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- LIB
