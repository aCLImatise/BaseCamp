class: CommandLineTool
id: SnpSift_annotate.cwl
inputs:
- id: in_dbsnp
  doc: ': Use DbSnp database.'
  type: boolean
  inputBinding:
    prefix: -dbsnp
- id: in_clin_var
  doc: ': Use ClinVar database.'
  type: boolean
  inputBinding:
    prefix: -clinvar
- id: in_annotate_fields_even
  doc: ": Annotate fields, even if the database has an empty value (annotates using\
    \ '.' for empty)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_exists
  doc: ": Annotate whether the variant exists or not in the database (using 'tag'\
    \ as an INFO field FLAG)."
  type: string
  inputBinding:
    prefix: -exists
- id: in_id
  doc: ': Only annotate ID field (do not add INFO field). Default: true'
  type: boolean
  inputBinding:
    prefix: -id
- id: in_info
  doc: ': Annotate using a list of info fields (list is a comma separated list of
    fields). Default: ALL.'
  type: string
  inputBinding:
    prefix: -info
- id: in_name
  doc: ": Prepend 'str' to all annotated INFO fields. Default: ''."
  type: string
  inputBinding:
    prefix: -name
- id: in_max_block_size
  doc: ": Use 'max block size' when creating index ('-sorted' command line option).\
    \ Default: 16384"
  type: long
  inputBinding:
    prefix: -maxBlockSize
- id: in_no_alt
  doc: ': Do not use REF and ALT fields when comparing database.vcf entries to file.vcf
    entries. Default: false'
  type: boolean
  inputBinding:
    prefix: -noAlt
- id: in_no_id
  doc: ': Do not annotate ID field. Default: false'
  type: boolean
  inputBinding:
    prefix: -noId
- id: in_no_info
  doc: ': Do not annotate INFO fields. Default: false'
  type: boolean
  inputBinding:
    prefix: -noInfo
- id: in_sorted
  doc: ': VCF database is sorted and uncompressed. Default: false'
  type: boolean
  inputBinding:
    prefix: -sorted
- id: in_tab_ix
  doc: ': VCF database is tabix-indexed. Default: false'
  type: boolean
  inputBinding:
    prefix: -tabix
- id: in_config_file_specify
  doc: ', -config <file>  : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__debug
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_db
  doc: ': Database file name (for commands that require databases).'
  type: File
  inputBinding:
    prefix: -db
- id: in_download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
- id: in_no_download
  doc: ': Do not download a database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -noDownload
- id: in_no_log
  doc: ': Do not report usage statistics to server.'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: in__verbose
  doc: ': Verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_database_dot_vcf
  doc: ": Use 'database.vcf' file as annotations database. Note: The VCF file can\
    \ be bgzipped and tabix-indexed."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- annotate
