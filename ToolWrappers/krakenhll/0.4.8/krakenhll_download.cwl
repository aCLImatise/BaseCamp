class: CommandLineTool
id: krakenhll_download.cwl
inputs:
- id: in_folder_files_downloaded
  doc: "Folder to which the files are downloaded. Default: '.'"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_db
  doc: 'Alternative to -o: Download to <directory>/{library,taxonomy}.'
  type: Directory?
  inputBinding:
    prefix: --db
- id: in_threads
  doc: "<# of threads>  Number of processes when downloading (uses xargs). Default:\
    \ '5'"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_rsync
  doc: Download using rsync.
  type: boolean?
  inputBinding:
    prefix: --rsync
- id: in_overwrite
  doc: Redownload and overwrite files with the same name.
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: Be verbose.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_term
  doc: Download all sequences returned from a NCBI nucleotide search.
  type: string?
  inputBinding:
    prefix: --term
- id: in_mappings
  doc: "Try mapping accession IDs using the mapping files for the specified divisions\
    \ (comma-separated).\nDefault: nucl_gb. Possible values: nucl_est, nucl_gb, nucl_gss,\
    \ nucl_wgs.\nDownloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
  type: long?
  inputBinding:
    prefix: --mappings
- id: in_ret_mode
  doc: 'Specify return mode. Possible options: text (default), asn.1, xml.'
  type: double?
  inputBinding:
    prefix: --retmode
- id: in_ret_type
  doc: "Specify return type for download. Note that no mapping files are generated\
    \ when\nrettype is specified. Possible options: fasta (default), gb, gbc, native,\
    \ acc, seqid, ft, gbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and\
    \ fasta files are split, while the other formats stay in chunks.\nDownloaded from\
    \ ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
  type: long?
  inputBinding:
    prefix: --rettype
- id: in_fna
  doc: "Comma-separated list of sequence types, including genomic, rna, rna_from_genomic,\
    \ cds_from_genomic. Default: genomic.\nSee the assembly project FTP site for available\
    \ sequences"
  type: string?
  inputBinding:
    prefix: --fna
- id: in_filter_unplaced_sequences
  doc: Filter unplaced sequences.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_modify_sequence_header
  doc: Modify sequence header to include taxonomy ID for Kraken (i.e. add '>kraken:taxid|TAXID'
    to each sequence).
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_dust
  doc: Mask low-complexity regions using dustmasker.
  type: boolean?
  inputBinding:
    prefix: --dust
- id: in_include_viral_neighbors
  doc: Include viral neighbors. Deprecated. Add 'viral-neighbors' to the arguments,
    instead.
  type: boolean?
  inputBinding:
    prefix: --include-viral-neighbors
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- krakenhll-download
