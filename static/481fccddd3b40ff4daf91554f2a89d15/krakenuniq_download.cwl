class: CommandLineTool
id: krakenuniq_download.cwl
inputs:
- id: in_folder_files_downloaded
  doc: "Folder to which the files are downloaded. Default: '.'"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_db
  doc: 'Alternative to -o: Download to <directory>/{library,taxonomy}.'
  type: Directory
  inputBinding:
    prefix: --db
- id: in_threads
  doc: "<# of threads>  Number of processes when downloading (uses xargs). Default:\
    \ '5'"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_rsync
  doc: Download using rsync.
  type: boolean
  inputBinding:
    prefix: --rsync
- id: in_overwrite
  doc: Redownload and overwrite files with the same name.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_dust
  doc: Mask low-complexity regions using dustmasker.
  type: boolean
  inputBinding:
    prefix: --dust
- id: in_min_seq_len
  doc: Filter all sequences from the FASTA files that have less than X bp.
  type: long
  inputBinding:
    prefix: --min-seq-len
- id: in_search
  doc: "Download all sequences returned from a NCBI nucleotide search.\nWhen used\
    \ with viral-neighbors, it subsets the viral genomes by the search.\nE.g. \"txid1570291[Organism]\"\
    \ for Ebola virus sequences (taxonomy ID 1570291)."
  type: long
  inputBinding:
    prefix: --search
- id: in_ac
  doc: ',AC2          Alternative to --search. Download specified ACs of nucleotide
    database.'
  type: long
  inputBinding:
    prefix: --ac
- id: in_mapping_file
  doc: "Map accessions using the specified mapping file(s) (comma-separated).\nPossible\
    \ values: nucl_est, nucl_gb, nucl_gss, nucl_wgs.\nFor viral-neighbors, the default\
    \ is nucl_gb. Unset by giving it an empty string.\nDownloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
  type: File
  inputBinding:
    prefix: --mapping-file
- id: in_ret_mode
  doc: 'Specify return mode. Possible options: text (default), asn.1, xml.'
  type: double
  inputBinding:
    prefix: --retmode
- id: in_ret_type
  doc: "Specify return type for download. Note that no mapping files are generated\
    \ when\nrettype is specified. Possible options: fasta (default), gb, gbc, native,\
    \ acc, seqid, ft,\ngbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb\
    \ and fasta files are split, while the other formats stay in chunks.\nThe resulting\
    \ files will have the rettype as extension."
  type: string
  inputBinding:
    prefix: --rettype
- id: in_tax_a
  doc: "Provide list of taxa that are kept in the database. Comma separated, supply\
    \ either taxIDs or\none of the following division names: archaea bacteria fungi\
    \ parasitic_worms protozoa viral\nDefault: \"bacteria,archaea,viral,fungi,protozoa\""
  type: string
  inputBinding:
    prefix: --taxa
- id: in_exclude_environmental_tax_a
  doc: Exclude taxa that are named 'environmental samples'.
  type: boolean
  inputBinding:
    prefix: --exclude-environmental-taxa
- id: in_fna
  doc: "Comma-separated list of sequence types, including genomic, rna, rna_from_genomic,\
    \ cds_from_genomic. Default: genomic.\nSee the assembly project FTP site for available\
    \ sequences"
  type: string
  inputBinding:
    prefix: --fna
- id: in_filter_unplaced_sequences
  doc: Filter unplaced sequences.
  type: boolean
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- krakenuniq-download
