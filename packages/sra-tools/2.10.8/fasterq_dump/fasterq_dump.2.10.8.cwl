class: CommandLineTool
id: fasterq_dump.2.10.8.cwl
inputs:
- id: in_outfile
  doc: "full path of outputfile (overrides usage\nof current directory and given accession)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_outdir
  doc: "path for outputfile (overrides usage of\ncurrent directory, but uses given\n\
    accession)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_bufsize
  doc: "size of file-buffer (dflt=1MB, takes\nnumber or number and unit)"
  type: long?
  inputBinding:
    prefix: --bufsize
- id: in_cur_cache
  doc: "size of cursor-cache (dflt=10MB, takes\nnumber or number and unit)"
  type: long?
  inputBinding:
    prefix: --curcache
- id: in_mem
  doc: "memory limit for sorting (dflt=100MB,\ntakes number or number and unit)"
  type: long?
  inputBinding:
    prefix: --mem
- id: in_temp
  doc: "path to directory for temp. files\n(dflt=current dir.)"
  type: File?
  inputBinding:
    prefix: --temp
- id: in_threads
  doc: how many threads to use (dflt=6)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_progress
  doc: show progress (not possible if stdout used)
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_details
  doc: print details of all options selected
  type: boolean?
  inputBinding:
    prefix: --details
- id: in_split_spot
  doc: split spots into reads
  type: boolean?
  inputBinding:
    prefix: --split-spot
- id: in_split_files
  doc: write reads into different files
  type: boolean?
  inputBinding:
    prefix: --split-files
- id: in_split_three
  doc: writes single reads into special file
  type: boolean?
  inputBinding:
    prefix: --split-3
- id: in_concatenate_reads
  doc: writes whole spots into one file
  type: boolean?
  inputBinding:
    prefix: --concatenate-reads
- id: in_stdout
  doc: print output to stdout
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_force
  doc: force overwrite of existing file(s)
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_rowid_as_name
  doc: "use rowid as name (avoids using the name\ncolumn)"
  type: boolean?
  inputBinding:
    prefix: --rowid-as-name
- id: in_skip_technical
  doc: skip technical reads
  type: boolean?
  inputBinding:
    prefix: --skip-technical
- id: in_include_technical
  doc: explicitly include technical reads
  type: boolean?
  inputBinding:
    prefix: --include-technical
- id: in_print_read_nr
  doc: include read-number in defline
  type: boolean?
  inputBinding:
    prefix: --print-read-nr
- id: in_min_read_len
  doc: filter by sequence-lenght
  type: long?
  inputBinding:
    prefix: --min-read-len
- id: in_table
  doc: which seq-table to use in case of pacbio
  type: string?
  inputBinding:
    prefix: --table
- id: in_strict
  doc: terminate on invalid read
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_filter_output_given
  doc: filter output by matching against given
  type: string?
  inputBinding:
    prefix: --bases
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string?
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File?
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_append_outputfile_instead
  doc: -A|--append                      append to output-file, instead of
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasterq-dump.2.10.8
