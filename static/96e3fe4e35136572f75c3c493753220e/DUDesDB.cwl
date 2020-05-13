class: CommandLineTool
id: DUDesDB.py.cwl
inputs:
- id: m
  doc: "'gi' uses the GI as the identifier (For headers like: >gi|158333233|ref|NC_009925.1|)\
    \ [NCBI is phasing out sequence GI numbers in September 2016]. 'av' uses the accession.version\
    \ as the identifier (for headers like: >NC_013791.2). Default: 'av'"
  type: string
  inputBinding:
    prefix: -m
- id: f
  doc: "[<fasta_files> [<fasta_files> ...]] Reference fasta file(s) for header extraction\
    \ only, plain or gzipped - the same file used to generate the read mapping index.\
    \ Each sequence header '>' should contain a identifier as defined in the reference\
    \ mode."
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: "[<ref2tax_files> [<ref2tax_files> ...]] reference id to taxid file(s): 'gi_taxid_nucl.dmp[.gz]'\
    \ --> 'gi' mode, '*.accession2taxid[.gz]' --> 'av' mode [from NCBI taxonomy database\
    \ ftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
  type: boolean
  inputBinding:
    prefix: -g
- id: n
  doc: nodes.dmp file [from NCBI taxonomy database ftp://ftp.ncbi.nih.gov/pub/taxonomy/]
  type: string
  inputBinding:
    prefix: -n
- id: a
  doc: names.dmp file [from NCBI taxonomy database ftp://ftp.ncbi.nih.gov/pub/taxonomy/]
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: 'Output prefix. Default: dudesdb'
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: '# of threads. Default: 1'
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: show program's version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- DUDesDB.py
