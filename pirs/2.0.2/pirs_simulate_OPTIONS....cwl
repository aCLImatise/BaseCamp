class: CommandLineTool
id: pirs_simulate_OPTIONS....cwl
inputs:
- id: no_gc_content_bias
  doc: Do not simulate GC bias.  The GC bias profile will not be used.
  type: boolean
  inputBinding:
    prefix: --no-gc-content-bias
- id: output_prefix
  doc: 'Use PREFIX as the prefix of the output files.  Default: "pirs_reads"'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: output_file_type
  doc: 'The string "text" or "gzip" to specify the type of the output FASTQ files
    containing the simulated reads of the genome, as well as the log files.  Default:
    "text"'
  type: string
  inputBinding:
    prefix: --output-file-type
- id: compress
  doc: Equivalent to -c gzip.
  type: boolean
  inputBinding:
    prefix: --compress
- id: no_log_files
  doc: Do not write the log files.
  type: boolean
  inputBinding:
    prefix: --no-log-files
- id: random_seed
  doc: "Use SEED as the random seed. Default: time(NULL) * getpid().  Note: If pIRS\
    \ was not compiled with --disable-threads, each thread actually uses its own random\
    \ number generator that is seeded by this base seed added to the thread number;\
    \ also, if you need pIRS's output to be exactly reproducible, you must specify\
    \ the random seed as well as use only 1 simulator thread (--threads=1, or configure\
    \ with --disable-threads, or run on system with 4 or fewer processors)."
  type: string
  inputBinding:
    prefix: --random-seed
- id: threads
  doc: 'Use NUM_THREADS threads to simulate reads.  This option is not available if
    pIRS was compiled with the --disable-threads option.  Default: number of processors
    minus 2 if writing uncompressed output, or number of processors minus 3 if writing
    compressed output, or 1 if there are not this many processors.'
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: Do not print informational messages.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- pirs
- simulate
- OPTIONS...
