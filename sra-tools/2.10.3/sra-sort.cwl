#!/usr/bin/env cwl-runner

baseCommand:
- sra-sort.2
class: CommandLineTool
cwlVersion: v1.0
id: sra-sort.2
inputs:
- doc: ''
  id: src_object
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: dst_object
  inputBinding:
    position: 1
  type: string
- doc: 'ignore failure when sorting multiple objects  i.e. continue in spite of previous
    errors '
  id: ignore_failure
  inputBinding:
    prefix: --ignore-failure
  type: boolean
- doc: 'force overwrite of existing destination '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'sets limit on dynamic memory usage '
  id: mem_limit
  inputBinding:
    prefix: --mem-limit
  type: string
- doc: 'sets id map-file cache size '
  id: map_file_b_size
  inputBinding:
    prefix: --map-file-bsize
  type: string
- doc: 'sets number of join-index ids to process at  a time '
  id: max_idx_ids
  inputBinding:
    prefix: --max-idx-ids
  type: string
- doc: 'sets number of join-index ids to process  within REFERENCE table '
  id: max_ref_idx_ids
  inputBinding:
    prefix: --max-ref-idx-ids
  type: string
- doc: 'sets number of rows to process with large  columns '
  id: max_large_idx_ids
  inputBinding:
    prefix: --max-large-idx-ids
  type: string
- doc: 'sets specific directory to use for  temporary files '
  id: tempdir
  inputBinding:
    prefix: --tempdir
  type: File
- doc: 'sets specific directory to use for  memory-mapped buffers '
  id: mmap_dir
  inputBinding:
    prefix: --mmapdir
  type: File
- doc: 'write old=>new index in unsorted order '
  id: unsorted_old_new
  inputBinding:
    prefix: --unsorted-old-new
  type: boolean
- doc: 'generate md5sum compatible checksum files  for each column [default] '
  id: column_md5
  inputBinding:
    prefix: --column-md5
  type: boolean
- doc: 'disable generation of column checksums '
  id: no_column_checksum
  inputBinding:
    prefix: --no-column-checksum
  type: boolean
- doc: 'generate CRC32 checksums for each blob  [default] '
  id: blob_crc32
  inputBinding:
    prefix: --blob-crc32
  type: boolean
- doc: 'generate MD5 checksums for each blob '
  id: blob_md5
  inputBinding:
    prefix: --blob-md5
  type: boolean
- doc: 'disable generation of blob checksums '
  id: no_blob_checksum
  inputBinding:
    prefix: --no-blob-checksum
  type: boolean
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
