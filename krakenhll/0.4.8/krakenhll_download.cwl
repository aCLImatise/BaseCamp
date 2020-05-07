class: CommandLineTool
id: krakenhll_download.cwl
inputs:
- id: o
  doc: "Folder to which the files are downloaded. Default: '.'"
  type: Directory
  inputBinding:
    prefix: -o
- id: db
  doc: 'Alternative to -o: Download to <directory>/{library,taxonomy}.'
  type: Directory
  inputBinding:
    prefix: --db
- id: threads
  doc: "<# of threads>  Number of processes when downloading (uses xargs). Default:\
    \ '5'"
  type: boolean
  inputBinding:
    prefix: --threads
- id: rsync
  doc: Download using rsync.
  type: boolean
  inputBinding:
    prefix: --rsync
- id: overwrite
  doc: Redownload and overwrite files with the same name.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: term
  doc: Download all sequences returned from a NCBI nucleotide search.
  type: string
  inputBinding:
    prefix: --term
- id: mappings
  doc: 'Try mapping accession IDs using the mapping files for the specified divisions
    (comma-separated). Default: nucl_gb. Possible values: nucl_est, nucl_gb, nucl_gss,
    nucl_wgs. Downloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/.'
  type: string
  inputBinding:
    prefix: --mappings
- id: ret_mode
  doc: 'Specify return mode. Possible options: text (default), asn.1, xml.'
  type: string
  inputBinding:
    prefix: --retmode
- id: ret_type
  doc: 'Specify return type for download. Note that no mapping files are generated
    when rettype is specified. Possible options: fasta (default), gb, gbc, native,
    acc, seqid, ft, gbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and
    fasta files are split, while the other formats stay in chunks. Downloaded from
    ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/.'
  type: string
  inputBinding:
    prefix: --rettype
- id: fna
  doc: 'Comma-separated list of sequence types, including genomic, rna, rna_from_genomic,
    cds_from_genomic. Default: genomic. See the assembly project FTP site for available
    sequences'
  type: string
  inputBinding:
    prefix: --fna
- id: u
  doc: Filter unplaced sequences.
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: Modify sequence header to include taxonomy ID for Kraken (i.e. add '>kraken:taxid|TAXID'
    to each sequence).
  type: boolean
  inputBinding:
    prefix: -l
- id: dust
  doc: Mask low-complexity regions using dustmasker.
  type: boolean
  inputBinding:
    prefix: --dust
- id: include_viral_neighbors
  doc: Include viral neighbors. Deprecated. Add 'viral-neighbors' to the arguments,
    instead.
  type: boolean
  inputBinding:
    prefix: --include-viral-neighbors
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenhll-download
