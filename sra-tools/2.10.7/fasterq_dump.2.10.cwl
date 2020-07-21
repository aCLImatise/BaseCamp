class: CommandLineTool
id: ../../../fasterq_dump.2.10.7.cwl
inputs:
- id: outfile
  doc: full path of outputfile (overrides usage of current directory and given accession)
  type: File
  inputBinding:
    prefix: --outfile
- id: outdir
  doc: path for outputfile (overrides usage of current directory, but uses given accession)
  type: File
  inputBinding:
    prefix: --outdir
- id: bufsize
  doc: size of file-buffer (dflt=1MB, takes number or number and unit)
  type: long
  inputBinding:
    prefix: --bufsize
- id: cur_cache
  doc: size of cursor-cache (dflt=10MB, takes number or number and unit)
  type: long
  inputBinding:
    prefix: --curcache
- id: mem
  doc: memory limit for sorting (dflt=100MB, takes number or number and unit)
  type: long
  inputBinding:
    prefix: --mem
- id: temp
  doc: path to directory for temp. files (dflt=current dir.)
  type: File
  inputBinding:
    prefix: --temp
- id: threads
  doc: how many threads to use (dflt=6)
  type: string
  inputBinding:
    prefix: --threads
- id: progress
  doc: show progress (not possible if stdout used)
  type: boolean
  inputBinding:
    prefix: --progress
- id: details
  doc: print details of all options selected
  type: boolean
  inputBinding:
    prefix: --details
- id: split_spot
  doc: split spots into reads
  type: boolean
  inputBinding:
    prefix: --split-spot
- id: split_files
  doc: write reads into different files
  type: boolean
  inputBinding:
    prefix: --split-files
- id: split_three
  doc: writes single reads into special file
  type: boolean
  inputBinding:
    prefix: --split-3
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
- fasterq-dump.2.10.7
