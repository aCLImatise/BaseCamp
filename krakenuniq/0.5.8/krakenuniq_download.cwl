class: CommandLineTool
id: krakenuniq_download.cwl
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
- id: dust
  doc: Mask low-complexity regions using dustmasker.
  type: boolean
  inputBinding:
    prefix: --dust
- id: min_seq_len
  doc: Filter all sequences from the FASTA files that have less than X bp.
  type: string
  inputBinding:
    prefix: --min-seq-len
- id: search
  doc: Download all sequences returned from a NCBI nucleotide search. When used with
    viral-neighbors, it subsets the viral genomes by the search. E.g. "txid1570291[Organism]"
    for Ebola virus sequences (taxonomy ID 1570291).
  type: string
  inputBinding:
    prefix: --search
- id: ac
  doc: ',AC2          Alternative to --search. Download specified ACs of nucleotide
    database.'
  type: string
  inputBinding:
    prefix: --ac
- id: mapping_file
  doc: 'Map accessions using the specified mapping file(s) (comma-separated). Possible
    values: nucl_est, nucl_gb, nucl_gss, nucl_wgs. For viral-neighbors, the default
    is nucl_gb. Unset by giving it an empty string. Downloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/.'
  type: string
  inputBinding:
    prefix: --mapping-file
- id: ret_mode
  doc: 'Specify return mode. Possible options: text (default), asn.1, xml.'
  type: string
  inputBinding:
    prefix: --retmode
- id: ret_type
  doc: 'Specify return type for download. Note that no mapping files are generated
    when rettype is specified. Possible options: fasta (default), gb, gbc, native,
    acc, seqid, ft,  gbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and
    fasta files are split, while the other formats stay in chunks. The resulting files
    will have the rettype as extension.'
  type: string
  inputBinding:
    prefix: --rettype
- id: tax_a
  doc: 'Provide list of taxa that are kept in the database. Comma separated, supply
    either taxIDs or one of the following division names: archaea bacteria fungi parasitic_worms
    protozoa viral Default: "bacteria,archaea,viral,fungi,protozoa"'
  type: string
  inputBinding:
    prefix: --taxa
- id: exclude_environmental_tax_a
  doc: Exclude taxa that are named 'environmental samples'.
  type: boolean
  inputBinding:
    prefix: --exclude-environmental-taxa
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
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenuniq-download
