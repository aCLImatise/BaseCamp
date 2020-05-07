class: CommandLineTool
id: seatac.cwl
inputs:
- id: num_threads
  doc: Use n search threads
  type: string
  inputBinding:
    prefix: -numthreads
- id: loader_high_water_mark
  doc: Size of the loader queue
  type: string
  inputBinding:
    prefix: -loaderhighwatermark
- id: loader_sleep
  doc: Time the loader will sleep when its output queue is full
  type: string
  inputBinding:
    prefix: -loadersleep
- id: loader_warnings
  doc: Enable warning messages for the loader
  type: boolean
  inputBinding:
    prefix: -loaderwarnings
- id: search_sleep
  doc: Time the searcher will sleep when it has no input
  type: string
  inputBinding:
    prefix: -searchsleep
- id: writer_high_water_mark
  doc: Size of the output queue
  type: string
  inputBinding:
    prefix: -writerhighwatermark
- id: writer_sleep
  doc: Time the writer will sleep when it has nothing to write
  type: string
  inputBinding:
    prefix: -writersleep
- id: writer_warnings
  doc: Enable warning messages for the writer
  type: boolean
  inputBinding:
    prefix: -writerwarnings
- id: use_tables
  doc: If 'datfile' exists AND is a complete and valid file, load the tables from
    the file and do the compute. Otherwise, fail.
  type: string
  inputBinding:
    prefix: -usetables
- id: build_tables
  doc: If 'datfile' doesn't exist, build the tables, write them to 'datfile' and exit.  Otherwise,
    quit.
  type: string
  inputBinding:
    prefix: -buildtables
- id: filter_name
  doc: Use the shared object x.so as a filter method.
  type: string
  inputBinding:
    prefix: -filtername
- id: filter_opts
  doc: The string 'opts' is passed to the filter on creation.
  type: string
  inputBinding:
    prefix: -filteropts
- id: mask
  doc: Ignore all mers listed in file f
  type: string
  inputBinding:
    prefix: -mask
- id: only
  doc: Use only the mers listed in file f
  type: string
  inputBinding:
    prefix: -only
- id: stream
  doc: Query sequences (the stream)
  type: string
  inputBinding:
    prefix: -stream
- id: table
  doc: Database sequences (the table)
  type: string
  inputBinding:
    prefix: -table
- id: use
  doc: '#,#,#,#            using only those sequences specified'
  type: boolean
  inputBinding:
    prefix: -use
- id: use
  doc: using only those sequences listed in the file
  type: File
  inputBinding:
    prefix: -use
- id: verbose
  doc: Entertain the user
  type: boolean
  inputBinding:
    prefix: -verbose
- id: output
  doc: Write output to file f
  type: string
  inputBinding:
    prefix: -output
- id: stats
  doc: Write resource statistics to f
  type: string
  inputBinding:
    prefix: -stats
outputs: []
cwlVersion: v1.1
baseCommand:
- seatac
