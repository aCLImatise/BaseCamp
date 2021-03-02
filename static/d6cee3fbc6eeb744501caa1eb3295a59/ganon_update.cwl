class: CommandLineTool
id: ganon_update.cwl
inputs:
- id: in_output_db_prefix
  doc: "Output database prefix (.ibf, .map, .tax, .gnn).\nDefault: overwrite current\
    \ --db-prefix"
  type: boolean?
  inputBinding:
    prefix: --output-db-prefix
- id: in_threads
  doc: 'Number of sub-processes/threads to use. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_specialization
  doc: "Change specialization mode. Can only be used if\ndatabase was built with some\
    \ specialization. Options:\n[sequence,file,assembly,custom]. \"sequence\" will\
    \ use\nsequence accession as target. \"file\" uses the filename\nas target. \"\
    assembly\" will use assembly info from NCBI\nas target. \"custom\" uses the 4th\
    \ column of the file\nprovided in --seq-info-file as target."
  type: boolean?
  inputBinding:
    prefix: --specialization
- id: in_seq_info_mode
  doc: "[ [ ...]]\nAutomatic mode to retrieve tax. info and seq. length.\n[auto,eutils]\
    \ or one or more accession2taxid files\nfrom NCBI [nucl_gb nucl_wgs nucl_est nucl_gss\
    \ pdb prot\ndead_nucl dead_wgs dead_prot]. auto will either use\neutils for less\
    \ than 50000 input sequences or nucl_gb\nnucl_wgs. Alternatively a file can be\
    \ directly\nprovided (see --seq-info-file). Default: auto"
  type: boolean?
  inputBinding:
    prefix: --seq-info-mode
- id: in_seq_info_file
  doc: "Tab-separated file with sequence information (seqid\n<tab> seq.len <tab> taxid\
    \ [<tab> assembly id])\n[Mutually exclusive --seq-info]"
  type: boolean?
  inputBinding:
    prefix: --seq-info-file
- id: in_tax_dump_file
  doc: "[ [ ...]]\nForce use of a specific version of the\n(taxdump.tar.gz) or (nodes.dmp\
    \ names.dmp [merged.dmp])\nfile(s) from NCBI Taxonomy (otherwise it will be\n\
    automatically downloaded)"
  type: boolean?
  inputBinding:
    prefix: --taxdump-file
- id: in_input_directory
  doc: Directory containing input files
  type: boolean?
  inputBinding:
    prefix: --input-directory
- id: in_input_extension
  doc: "Extension of files to use with --input-directory\n(provide it without * expansion,\
    \ e.g. \".fna.gz\")"
  type: boolean?
  inputBinding:
    prefix: --input-extension
- id: in_update_complete
  doc: "Update adding and removing sequences. Input files\nshould represent the complete\
    \ updated set of\nreferences, not only new sequences."
  type: boolean?
  inputBinding:
    prefix: --update-complete
- id: in_write_seq_info_file
  doc: Write sequence information to DB_PREFIX.seqinfo.txt
  type: boolean?
  inputBinding:
    prefix: --write-seq-info-file
- id: in_verbose
  doc: Verbose output mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet output mode
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_db_prefix
  doc: Database input prefix (.ibf, .map, .tax, .gnn)
  type: string?
  inputBinding:
    prefix: --db-prefix
- id: in_input_reference_sequence
  doc: "[INPUT_FILES [INPUT_FILES ...]], --input-files [INPUT_FILES [INPUT_FILES ...]]\n\
    Input reference sequence fasta files [.gz] to be\nincluded to the database. Complete\
    \ set of updated\nsequences should be provided when using --update-\ncomplete\n"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon
- update
