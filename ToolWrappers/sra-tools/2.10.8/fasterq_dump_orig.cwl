class: CommandLineTool
id: fasterq_dump_orig.cwl
inputs:
- id: in_outfile
  doc: output-file
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_outdir
  doc: output-dir
  type: boolean?
  inputBinding:
    prefix: --outdir
- id: in_bufsize
  doc: size of file-buffer dflt=1MB
  type: boolean?
  inputBinding:
    prefix: --bufsize
- id: in_cur_cache
  doc: size of cursor-cache dflt=10MB
  type: boolean?
  inputBinding:
    prefix: --curcache
- id: in_mem
  doc: memory limit for sorting dflt=100MB
  type: boolean?
  inputBinding:
    prefix: --mem
- id: in_temp
  doc: where to put temp. files dflt=curr dir
  type: boolean?
  inputBinding:
    prefix: --temp
- id: in_threads
  doc: how many thread dflt=6
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_progress
  doc: show progress
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_details
  doc: print details
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
  doc: writes single reads in special file
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
  doc: force to overwrite existing file(s)
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_rowid_as_name
  doc: use row-id as name
  type: boolean?
  inputBinding:
    prefix: --rowid-as-name
- id: in_skip_technical
  doc: skip technical reads
  type: boolean?
  inputBinding:
    prefix: --skip-technical
- id: in_include_technical
  doc: include technical reads
  type: boolean?
  inputBinding:
    prefix: --include-technical
- id: in_print_read_nr
  doc: print read-numbers
  type: boolean?
  inputBinding:
    prefix: --print-read-nr
- id: in_min_read_len
  doc: filter by sequence-len
  type: boolean?
  inputBinding:
    prefix: --min-read-len
- id: in_table
  doc: which seq-table to use in case of pacbio
  type: boolean?
  inputBinding:
    prefix: --table
- id: in_strict
  doc: terminate on invalid read
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_bases
  doc: filter by bases
  type: boolean?
  inputBinding:
    prefix: --bases
- id: in_append
  doc: append to output-file
  type: File?
  inputBinding:
    prefix: --append
- id: in_ngc
  doc: PATH to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'fasterq-dump-orig : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output-file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_append
  doc: append to output-file
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- fasterq-dump-orig
