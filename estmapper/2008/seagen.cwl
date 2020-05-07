class: CommandLineTool
id: seagen.cwl
inputs:
- id: num_threads
  doc: Use n search threads
  type: string
  inputBinding:
    prefix: -numthreads
- id: loader_queue
  doc: Size of the loader queue
  type: string
  inputBinding:
    prefix: -loaderqueue
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
- id: writer_queue
  doc: Size of the output queue
  type: string
  inputBinding:
    prefix: -writerqueue
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
- id: build_tables
  doc: If 'datfile' doesn't exist, build the tables, write them to 'datfile' and exit.
  type: string
  inputBinding:
    prefix: -buildtables
- id: use_tables
  doc: Load the tables from 'datfile' file and do the compute. If 'datfile' doesn't
    exist, an implicit -buildtables is performed.
  type: string
  inputBinding:
    prefix: -usetables
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
- id: cdna
  doc: Query sequences (the cDNA, the stream)
  type: string
  inputBinding:
    prefix: -cdna
- id: stream
  doc: An alias for -cdna
  type: boolean
  inputBinding:
    prefix: -stream
- id: genomic
  doc: Database sequences (the genome, the table)
  type: string
  inputBinding:
    prefix: -genomic
- id: table
  doc: An alias for -genomic)
  type: boolean
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
- id: binary
  doc: Write the hits in a binary format
  type: boolean
  inputBinding:
    prefix: -binary
- id: output
  doc: Write output to file f
  type: string
  inputBinding:
    prefix: -output
- id: count
  doc: Write counts of hits to file f
  type: string
  inputBinding:
    prefix: -count
outputs: []
cwlVersion: v1.1
baseCommand:
- seagen
