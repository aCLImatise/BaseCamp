class: CommandLineTool
id: sra_sort.cwl
inputs:
- id: in_ignore_failure
  doc: "ignore failure when sorting multiple objects\ni.e. continue in spite of previous\
    \ errors"
  type: boolean
  inputBinding:
    prefix: --ignore-failure
- id: in_force
  doc: force overwrite of existing destination
  type: boolean
  inputBinding:
    prefix: --force
- id: in_mem_limit
  doc: sets limit on dynamic memory usage
  type: string
  inputBinding:
    prefix: --mem-limit
- id: in_map_file_b_size
  doc: sets id map-file cache size
  type: long
  inputBinding:
    prefix: --map-file-bsize
- id: in_max_idx_ids
  doc: "sets number of join-index ids to process at\na time"
  type: long
  inputBinding:
    prefix: --max-idx-ids
- id: in_max_ref_idx_ids
  doc: "sets number of join-index ids to process\nwithin REFERENCE table"
  type: long
  inputBinding:
    prefix: --max-ref-idx-ids
- id: in_max_large_idx_ids
  doc: sets number of rows to process with large
  type: long
  inputBinding:
    prefix: --max-large-idx-ids
- id: in_mmap_dir
  doc: "sets specific directory to use for\nmemory-mapped buffers"
  type: File
  inputBinding:
    prefix: --mmapdir
- id: in_unsorted_old_new
  doc: write old=>new index in unsorted order
  type: boolean
  inputBinding:
    prefix: --unsorted-old-new
- id: in_column_md_five
  doc: "generate md5sum compatible checksum files\nfor each column [default]"
  type: boolean
  inputBinding:
    prefix: --column-md5
- id: in_no_column_checksum
  doc: disable generation of column checksums
  type: boolean
  inputBinding:
    prefix: --no-column-checksum
- id: in_blob_crc_three_two
  doc: "generate CRC32 checksums for each blob\n[default]"
  type: boolean
  inputBinding:
    prefix: --blob-crc32
- id: in_blob_md_five
  doc: generate MD5 checksums for each blob
  type: boolean
  inputBinding:
    prefix: --blob-md5
- id: in_no_blob_checksum
  doc: disable generation of blob checksums
  type: boolean
  inputBinding:
    prefix: --no-blob-checksum
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_columns
  doc: '--tempdir <path-to-tmp>          sets specific directory to use for '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'sra-sort : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sra-sort
