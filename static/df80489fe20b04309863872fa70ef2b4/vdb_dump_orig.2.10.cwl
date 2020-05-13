class: CommandLineTool
id: vdb_dump_orig.2.10.3.cwl
inputs:
- id: id_range
  doc: 'prints id-range '
  type: boolean
  inputBinding:
    prefix: --id_range
- id: without_sra
  doc: 'without sra-type-translation '
  type: boolean
  inputBinding:
    prefix: --without_sra
- id: exclude
  doc: 'exclude these columns '
  type: boolean
  inputBinding:
    prefix: --exclude
- id: boolean
  doc: "defines how boolean's are printed (1,T) "
  type: boolean
  inputBinding:
    prefix: --boolean
- id: obj_version
  doc: 'request vdb-version '
  type: boolean
  inputBinding:
    prefix: --obj_version
- id: obj_timestamp
  doc: 'request object modification date '
  type: boolean
  inputBinding:
    prefix: --obj_timestamp
- id: obj_type
  doc: 'report type of object '
  type: boolean
  inputBinding:
    prefix: --obj_type
- id: num_elem
  doc: 'print only element-count '
  type: boolean
  inputBinding:
    prefix: --numelem
- id: numele_msum
  doc: 'sum element-count '
  type: boolean
  inputBinding:
    prefix: --numelemsum
- id: b_lobbing
  doc: 'show blobbing '
  type: boolean
  inputBinding:
    prefix: --blobbing
- id: phys
  doc: 'enumerate physical columns '
  type: boolean
  inputBinding:
    prefix: --phys
- id: readable
  doc: 'enumerate readable columns '
  type: boolean
  inputBinding:
    prefix: --readable
- id: idx_report
  doc: 'enumerate all available index '
  type: boolean
  inputBinding:
    prefix: --idx-report
- id: idx_range
  doc: 'enumerate values and row-ranges of one index '
  type: boolean
  inputBinding:
    prefix: --idx-range
- id: cur_cache
  doc: 'size of cursor cache '
  type: boolean
  inputBinding:
    prefix: --cur-cache
- id: output_file
  doc: 'write output to this file '
  type: boolean
  inputBinding:
    prefix: --output-file
- id: output_path
  doc: 'write output to this directory '
  type: boolean
  inputBinding:
    prefix: --output-path
- id: gzip
  doc: 'compress output using gzip '
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip2
  doc: 'compress output using bzip2 '
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: output_buffer_size
  doc: 'size of output-buffer, 0...none '
  type: boolean
  inputBinding:
    prefix: --output-buffer-size
- id: disable_multithreading
  doc: 'disable multithreading '
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: info
  doc: 'print info about run '
  type: boolean
  inputBinding:
    prefix: --info
- id: spot_groups
  doc: 'show spotgroups '
  type: boolean
  inputBinding:
    prefix: --spotgroups
- id: merge_ranges
  doc: 'merge and sort row-ranges '
  type: boolean
  inputBinding:
    prefix: --merge-ranges
- id: spread
  doc: 'show spread of integer values '
  type: boolean
  inputBinding:
    prefix: --spread
- id: append
  doc: 'append to output-file, if output-file used '
  type: boolean
  inputBinding:
    prefix: --append
- id: ngc
  doc: 'path to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
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
- vdb-dump-orig.2.10.3
