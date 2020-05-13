class: CommandLineTool
id: fasterq_dump.2.10.3.cwl
inputs:
- id: concatenate_reads
  doc: writes whole spots into one file
  type: boolean
  inputBinding:
    prefix: --concatenate-reads
- id: stdout
  doc: print output to stdout
  type: boolean
  inputBinding:
    prefix: --stdout
- id: force
  doc: force overwrite of existing file(s)
  type: boolean
  inputBinding:
    prefix: --force
- id: rowid_as_name
  doc: use rowid as name (avoids using the name column)
  type: boolean
  inputBinding:
    prefix: --rowid-as-name
- id: skip_technical
  doc: skip technical reads
  type: boolean
  inputBinding:
    prefix: --skip-technical
- id: include_technical
  doc: explicitly include technical reads
  type: boolean
  inputBinding:
    prefix: --include-technical
- id: print_read_nr
  doc: include read-number in defline
  type: boolean
  inputBinding:
    prefix: --print-read-nr
- id: min_read_len
  doc: filter by sequence-lenght
  type: string
  inputBinding:
    prefix: --min-read-len
- id: table
  doc: which seq-table to use in case of pacbio
  type: string
  inputBinding:
    prefix: --table
- id: strict
  doc: terminate on invalid read
  type: boolean
  inputBinding:
    prefix: --strict
- id: bases
  doc: filter output by matching against given bases
  type: string
  inputBinding:
    prefix: --bases
- id: append
  doc: append to output-file, instead of overwriting it
  type: boolean
  inputBinding:
    prefix: --append
- id: ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  type: string
  inputBinding:
    prefix: --log-level
- id: option_file
  doc: Read more options and parameters from the file.
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- fasterq-dump.2.10.3
