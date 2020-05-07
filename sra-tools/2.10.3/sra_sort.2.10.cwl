class: CommandLineTool
id: sra_sort.2.10.3.cwl
inputs:
- id: src_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dst_object
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ignore_failure
  doc: 'ignore failure when sorting multiple objects  i.e. continue in spite of previous
    errors '
  type: boolean
  inputBinding:
    prefix: --ignore-failure
- id: force
  doc: 'force overwrite of existing destination '
  type: boolean
  inputBinding:
    prefix: --force
- id: mem_limit
  doc: 'sets limit on dynamic memory usage '
  type: string
  inputBinding:
    prefix: --mem-limit
- id: map_file_b_size
  doc: 'sets id map-file cache size '
  type: string
  inputBinding:
    prefix: --map-file-bsize
- id: max_idx_ids
  doc: 'sets number of join-index ids to process at  a time '
  type: string
  inputBinding:
    prefix: --max-idx-ids
- id: max_ref_idx_ids
  doc: 'sets number of join-index ids to process  within REFERENCE table '
  type: string
  inputBinding:
    prefix: --max-ref-idx-ids
- id: max_large_idx_ids
  doc: 'sets number of rows to process with large  columns '
  type: string
  inputBinding:
    prefix: --max-large-idx-ids
- id: tempdir
  doc: 'sets specific directory to use for  temporary files '
  type: File
  inputBinding:
    prefix: --tempdir
- id: mmap_dir
  doc: 'sets specific directory to use for  memory-mapped buffers '
  type: File
  inputBinding:
    prefix: --mmapdir
- id: unsorted_old_new
  doc: 'write old=>new index in unsorted order '
  type: boolean
  inputBinding:
    prefix: --unsorted-old-new
- id: column_md5
  doc: 'generate md5sum compatible checksum files  for each column [default] '
  type: boolean
  inputBinding:
    prefix: --column-md5
- id: no_column_checksum
  doc: 'disable generation of column checksums '
  type: boolean
  inputBinding:
    prefix: --no-column-checksum
- id: blob_crc32
  doc: 'generate CRC32 checksums for each blob  [default] '
  type: boolean
  inputBinding:
    prefix: --blob-crc32
- id: blob_md5
  doc: 'generate MD5 checksums for each blob '
  type: boolean
  inputBinding:
    prefix: --blob-md5
- id: no_blob_checksum
  doc: 'disable generation of blob checksums '
  type: boolean
  inputBinding:
    prefix: --no-blob-checksum
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sra-sort.2.10.3
