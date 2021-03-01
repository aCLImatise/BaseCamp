class: CommandLineTool
id: DUDesDB.py.cwl
inputs:
- id: in_uses_gi_likegirefnc
  doc: "'gi' uses the GI as the identifier (For headers like:\n>gi|158333233|ref|NC_009925.1|)\
    \ [NCBI is phasing out\nsequence GI numbers in September 2016]. 'av' uses the\n\
    accession.version as the identifier (for headers like:\n>NC_013791.2). Default:\
    \ 'av'"
  type: double?
  inputBinding:
    prefix: -m
- id: in_reference_fasta_files
  doc: "[<fasta_files> [<fasta_files> ...]]\nReference fasta file(s) for header extraction\
    \ only,\nplain or gzipped - the same file used to generate the\nread mapping index.\
    \ Each sequence header '>' should\ncontain a identifier as defined in the reference\
    \ mode."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_reference_d_taxid
  doc: "[<ref2tax_files> [<ref2tax_files> ...]]\nreference id to taxid file(s):\n\
    'gi_taxid_nucl.dmp[.gz]' --> 'gi' mode,\n'*.accession2taxid[.gz]' --> 'av' mode\
    \ [from NCBI\ntaxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_nodesdmp_file_ncbi
  doc: "nodes.dmp file [from NCBI taxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
  type: File?
  inputBinding:
    prefix: -n
- id: in_namesdmp_file_ncbi
  doc: "names.dmp file [from NCBI taxonomy database\nftp://ftp.ncbi.nih.gov/pub/taxonomy/]"
  type: File?
  inputBinding:
    prefix: -a
- id: in_output_prefix_dudesdb
  doc: 'Output prefix. Default: dudesdb'
  type: string?
  inputBinding:
    prefix: -o
- id: in__threads_default
  doc: '# of threads. Default: 1'
  type: long?
  inputBinding:
    prefix: -t
- id: in_show_programs_number
  doc: show program's version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DUDesDB.py
