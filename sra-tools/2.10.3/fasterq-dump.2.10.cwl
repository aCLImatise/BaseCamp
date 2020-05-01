#!/usr/bin/env cwl-runner

baseCommand:
- fasterq-dump.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: fasterq-dump.2.10.3
inputs:
- doc: writes whole spots into one file
  id: concatenate_reads
  inputBinding:
    prefix: --concatenate-reads
  type: boolean
- doc: print output to stdout
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: force overwrite of existing file(s)
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: use rowid as name (avoids using the name column)
  id: rowid_as_name
  inputBinding:
    prefix: --rowid-as-name
  type: boolean
- doc: skip technical reads
  id: skip_technical
  inputBinding:
    prefix: --skip-technical
  type: boolean
- doc: explicitly include technical reads
  id: include_technical
  inputBinding:
    prefix: --include-technical
  type: boolean
- doc: include read-number in defline
  id: print_read_nr
  inputBinding:
    prefix: --print-read-nr
  type: boolean
- doc: filter by sequence-lenght
  id: min_read_len
  inputBinding:
    prefix: --min-read-len
  type: string
- doc: which seq-table to use in case of pacbio
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: terminate on invalid read
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: filter output by matching against given bases
  id: bases
  inputBinding:
    prefix: --bases
  type: string
- doc: append to output-file, instead of overwriting it
  id: append
  inputBinding:
    prefix: --append
  type: boolean
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
