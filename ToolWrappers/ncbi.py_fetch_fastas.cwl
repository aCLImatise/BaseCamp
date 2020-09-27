class: CommandLineTool
id: ncbi.py_fetch_fastas.cwl
inputs:
- id: in_force_overwrite
  doc: Overwrite existing files, if present.
  type: boolean
  inputBinding:
    prefix: --forceOverwrite
- id: in_combined_file_prefix
  doc: "The prefix of the file containing the combined\nconcatenated results returned\
    \ by the list of accession\nIDs, in the order provided."
  type: File
  inputBinding:
    prefix: --combinedFilePrefix
- id: in_file_ext
  doc: The extension to use for the downloaded files
  type: File
  inputBinding:
    prefix: --fileExt
- id: in_remove_separate_files
  doc: "If specified, remove the individual files and leave\nonly the combined file."
  type: boolean
  inputBinding:
    prefix: --removeSeparateFiles
- id: in_chunksize
  doc: "Causes files to be downloaded from GenBank in chunks\nof N accessions. Each\
    \ chunk will be its own combined\nfile, separate from any combined file created\
    \ via\n--combinedFilePrefix (default: 1). If chunkSize is\nunspecified and >500\
    \ accessions are provided,\nchunkSize will be set to 500 to adhere to the NCBI\n\
    guidelines on information retreival."
  type: File
  inputBinding:
    prefix: --chunkSize
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure."
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_email_address
  doc: "Your email address. To access the Genbank\nCoreNucleotide database, NCBI requires\
    \ you to specify\nyour email address with each request. In case of\nexcessive\
    \ usage of the E-utilities, NCBI will attempt\nto contact a user at the email\
    \ address provided before\nblocking access. This email address should be\nregistered\
    \ with NCBI. To register an email address,\nsimply send an email to eutilities@ncbi.nlm.nih.gov\n\
    including your email address and the tool name\n(tool='https://github.com/broadinstitute/viral-ngs')."
  type: string
  inputBinding:
    position: 0
- id: in_destination_dir
  doc: "Output directory with where .fasta and .tbl files will\nbe saved"
  type: string
  inputBinding:
    position: 1
- id: in_accession_ids
  doc: List of Genbank nuccore accession IDs
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ncbi.py
- fetch_fastas
