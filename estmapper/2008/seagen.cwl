#!/usr/bin/env cwl-runner

baseCommand:
- seagen
class: CommandLineTool
cwlVersion: v1.0
id: seagen
inputs:
- doc: Use n search threads
  id: num_threads
  inputBinding:
    prefix: -numthreads
  type: string
- doc: Size of the loader queue
  id: loader_queue
  inputBinding:
    prefix: -loaderqueue
  type: string
- doc: Time the loader will sleep when its output queue is full
  id: loader_sleep
  inputBinding:
    prefix: -loadersleep
  type: string
- doc: Enable warning messages for the loader
  id: loader_warnings
  inputBinding:
    prefix: -loaderwarnings
  type: boolean
- doc: Time the searcher will sleep when it has no input
  id: search_sleep
  inputBinding:
    prefix: -searchsleep
  type: string
- doc: Size of the output queue
  id: writer_queue
  inputBinding:
    prefix: -writerqueue
  type: string
- doc: Time the writer will sleep when it has nothing to write
  id: writer_sleep
  inputBinding:
    prefix: -writersleep
  type: string
- doc: Enable warning messages for the writer
  id: writer_warnings
  inputBinding:
    prefix: -writerwarnings
  type: boolean
- doc: If 'datfile' doesn't exist, build the tables, write them to 'datfile' and exit.
  id: build_tables
  inputBinding:
    prefix: -buildtables
  type: string
- doc: Load the tables from 'datfile' file and do the compute. If 'datfile' doesn't
    exist, an implicit -buildtables is performed.
  id: use_tables
  inputBinding:
    prefix: -usetables
  type: string
- doc: Ignore all mers listed in file f
  id: mask
  inputBinding:
    prefix: -mask
  type: string
- doc: Use only the mers listed in file f
  id: only
  inputBinding:
    prefix: -only
  type: string
- doc: Query sequences (the cDNA, the stream)
  id: cdna
  inputBinding:
    prefix: -cdna
  type: string
- doc: An alias for -cdna
  id: stream
  inputBinding:
    prefix: -stream
  type: boolean
- doc: Database sequences (the genome, the table)
  id: genomic
  inputBinding:
    prefix: -genomic
  type: string
- doc: An alias for -genomic)
  id: table
  inputBinding:
    prefix: -table
  type: boolean
- doc: '#,#,#,#            using only those sequences specified'
  id: use
  inputBinding:
    prefix: -use
  type: boolean
- doc: using only those sequences listed in the file
  id: use
  inputBinding:
    prefix: -use
  type: File
- doc: Entertain the user
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: Write the hits in a binary format
  id: binary
  inputBinding:
    prefix: -binary
  type: boolean
- doc: Write output to file f
  id: output
  inputBinding:
    prefix: -output
  type: string
- doc: Write counts of hits to file f
  id: count
  inputBinding:
    prefix: -count
  type: string
