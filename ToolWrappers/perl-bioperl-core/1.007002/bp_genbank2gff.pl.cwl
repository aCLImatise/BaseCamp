class: CommandLineTool
id: bp_genbank2gff.pl.cwl
inputs:
- id: in_create
  doc: Force creation and initialization of database
  type: boolean
  inputBinding:
    prefix: --create
- id: in_dsn
  doc: <dsn>        Data source (default dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: in_user
  doc: <user>       Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: in_pass
  doc: <password>   Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
- id: in_proxy
  doc: <proxy>      Proxy server to use for remote access
  type: boolean
  inputBinding:
    prefix: --proxy
- id: in_stdout
  doc: direct output to STDOUT
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_adaptor
  doc: <adaptor>    adaptor to use (eg dbi::mysql, dbi::pg, dbi::oracle)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: in_viral
  doc: "the genome you are loading is viral (changes tag\nchoices)"
  type: boolean
  inputBinding:
    prefix: --viral
- id: in_source
  doc: "<source>     source field for features ['genbank']\nEITHER --file        \
    \   Arguments that follow are Genbank/EMBL file names\nOR --gb_folder        \
    \  What follows is a folder full of gb files to process\nOR --accession      \
    \    Arguments that follow are genbank accession numbers\n(not gi!)\nOR --acc_file\
    \           Accession numbers (not gi!) in a file (one per line,\nno punc.)\n\
    OR --acc_pipe           Accession numbers (not gi!) from a STDIN pipe (one\nper\
    \ line)"
  type: boolean
  inputBinding:
    prefix: --source
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_genbank2gff.pl
