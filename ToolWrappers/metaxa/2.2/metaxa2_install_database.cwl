class: CommandLineTool
id: metaxa2_install_database.cwl
inputs:
- id: in_specify_name_install
  doc: ": Specify the name of the database to install (usually a gene name)\nIf not\
    \ specified, the program will show a list of available database options"
  type: string
  inputBinding:
    prefix: -g
- id: in_directory_where_install
  doc: ': The directory where to install the database. Default is in the metaxa2_db
    directory in the same directory as Metaxa2 itself'
  type: string
  inputBinding:
    prefix: -d
- id: in_repository_download_files
  doc: ': The repository to download the files from. Default is http://microbiology.se/sw/metaxa2_dbs'
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metaxa2_install_database
