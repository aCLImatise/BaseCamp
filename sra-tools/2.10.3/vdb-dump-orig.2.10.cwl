#!/usr/bin/env cwl-runner

baseCommand:
- vdb-dump-orig.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: vdb-dump-orig.2.10.3
inputs:
- doc: 'prints id-range '
  id: id_range
  inputBinding:
    prefix: --id_range
  type: boolean
- doc: 'without sra-type-translation '
  id: without_sra
  inputBinding:
    prefix: --without_sra
  type: boolean
- doc: 'exclude these columns '
  id: exclude
  inputBinding:
    prefix: --exclude
  type: boolean
- doc: "defines how boolean's are printed (1,T) "
  id: boolean
  inputBinding:
    prefix: --boolean
  type: boolean
- doc: 'request vdb-version '
  id: obj_version
  inputBinding:
    prefix: --obj_version
  type: boolean
- doc: 'request object modification date '
  id: obj_timestamp
  inputBinding:
    prefix: --obj_timestamp
  type: boolean
- doc: 'report type of object '
  id: obj_type
  inputBinding:
    prefix: --obj_type
  type: boolean
- doc: 'print only element-count '
  id: num_elem
  inputBinding:
    prefix: --numelem
  type: boolean
- doc: 'sum element-count '
  id: numele_msum
  inputBinding:
    prefix: --numelemsum
  type: boolean
- doc: 'show blobbing '
  id: b_lobbing
  inputBinding:
    prefix: --blobbing
  type: boolean
- doc: 'enumerate physical columns '
  id: phys
  inputBinding:
    prefix: --phys
  type: boolean
- doc: 'enumerate readable columns '
  id: readable
  inputBinding:
    prefix: --readable
  type: boolean
- doc: 'enumerate all available index '
  id: idx_report
  inputBinding:
    prefix: --idx-report
  type: boolean
- doc: 'enumerate values and row-ranges of one index '
  id: idx_range
  inputBinding:
    prefix: --idx-range
  type: boolean
- doc: 'size of cursor cache '
  id: cur_cache
  inputBinding:
    prefix: --cur-cache
  type: boolean
- doc: 'write output to this file '
  id: output_file
  inputBinding:
    prefix: --output-file
  type: boolean
- doc: 'write output to this directory '
  id: output_path
  inputBinding:
    prefix: --output-path
  type: boolean
- doc: 'compress output using gzip '
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: 'compress output using bzip2 '
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: 'size of output-buffer, 0...none '
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: boolean
- doc: 'disable multithreading '
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: 'print info about run '
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: 'show spotgroups '
  id: spot_groups
  inputBinding:
    prefix: --spotgroups
  type: boolean
- doc: 'merge and sort row-ranges '
  id: merge_ranges
  inputBinding:
    prefix: --merge-ranges
  type: boolean
- doc: 'show spread of integer values '
  id: spread
  inputBinding:
    prefix: --spread
  type: boolean
- doc: 'append to output-file, if output-file used '
  id: append
  inputBinding:
    prefix: --append
  type: boolean
- doc: 'path to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
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
