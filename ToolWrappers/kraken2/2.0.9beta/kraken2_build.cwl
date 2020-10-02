class: CommandLineTool
id: kraken2_build.cwl
inputs:
- id: in_download_taxonomy
  doc: Download NCBI taxonomic information
  type: boolean
  inputBinding:
    prefix: --download-taxonomy
- id: in_download_library
  doc: "Download partial library\n(TYPE = one of \"archaea\", \"bacteria\", \"plasmid\"\
    ,\n\"viral\", \"human\", \"fungi\", \"plant\", \"protozoa\",\n\"nr\", \"nt\",\
    \ \"UniVec\", \"UniVec_Core\")"
  type: string
  inputBinding:
    prefix: --download-library
- id: in_special
  doc: "Download and build a special database\n(TYPE = one of \"greengenes\", \"silva\"\
    , \"rdp\")"
  type: string
  inputBinding:
    prefix: --special
- id: in_add_to_library
  doc: Add FILE to library
  type: File
  inputBinding:
    prefix: --add-to-library
- id: in_build
  doc: "Create DB from library\n(requires taxonomy d/l'ed and at least one file\n\
    in library)"
  type: boolean
  inputBinding:
    prefix: --build
- id: in_clean
  doc: Remove unneeded files from a built database
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_standard
  doc: Download and build default database
  type: boolean
  inputBinding:
    prefix: --standard
- id: in_db
  doc: Kraken 2 DB name (mandatory except for
  type: long
  inputBinding:
    prefix: --db
- id: in_threads
  doc: '#                Number of threads (def: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_km_er_len
  doc: "K-mer length in bp/aa (build task only;\ndef: 35 nt, 15 aa)"
  type: long
  inputBinding:
    prefix: --kmer-len
- id: in_minimizer_len
  doc: "Minimizer length in bp/aa (build task only;\ndef: 31 nt, 12 aa)"
  type: long
  inputBinding:
    prefix: --minimizer-len
- id: in_minimizer_spaces
  doc: "Number of characters in minimizer that are\nignored in comparisons (build\
    \ task only;\ndef: 7 nt, 0 aa)"
  type: long
  inputBinding:
    prefix: --minimizer-spaces
- id: in_protein
  doc: Build a protein database for translated search
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_no_masking
  doc: Used with --standard/--download-library/
  type: boolean
  inputBinding:
    prefix: --no-masking
- id: in_max_db_size
  doc: "Maximum number of bytes for Kraken 2 hash table;\nif the estimator determines\
    \ more would normally be\nneeded, the reference library will be downsampled\n\
    to fit. (Used with --build/--standard/--special)"
  type: long
  inputBinding:
    prefix: --max-db-size
- id: in_use_ftp
  doc: "Use FTP for downloading instead of RSYNC; used with\n--download-library/--download-taxonomy/--standard."
  type: boolean
  inputBinding:
    prefix: --use-ftp
- id: in_skip_maps
  doc: "Avoids downloading accession number to taxid maps,\nused with --download-taxonomy."
  type: boolean
  inputBinding:
    prefix: --skip-maps
- id: in_load_factor
  doc: "Proportion of the hash table to be populated\n(build task only; def: 0.7,\
    \ must be\nbetween 0 and 1).\n"
  type: double
  inputBinding:
    prefix: --load-factor
- id: in_task
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kraken2-build
