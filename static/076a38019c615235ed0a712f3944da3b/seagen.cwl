class: CommandLineTool
id: seagen.cwl
inputs:
- id: in_mer_size
  doc: "Use k-mers\n-merskip j              Skip j mers between each mer inserted\
    \ into table\n-forward                Search only the normal query sequences\n\
    -reverse                Search only the reverse-complemented query sequences\n\
    -maxdiagonal d\n-maxgap g\n-qoverlap q\n-doverlap d\n-maxintron m\n-smallsequence\n\
    -singlelength l\n-singlecoverage c\n-multiplelength l\n-multiplecoverage c\n-extendweight\
    \ w\n-extendminimum m"
  type: string
  inputBinding:
    prefix: -mersize
- id: in_num_threads
  doc: Use n search threads
  type: string
  inputBinding:
    prefix: -numthreads
- id: in_loader_queue
  doc: Size of the loader queue
  type: long
  inputBinding:
    prefix: -loaderqueue
- id: in_loader_sleep
  doc: Time the loader will sleep when its output queue is full
  type: string
  inputBinding:
    prefix: -loadersleep
- id: in_loader_warnings
  doc: Enable warning messages for the loader
  type: boolean
  inputBinding:
    prefix: -loaderwarnings
- id: in_search_sleep
  doc: Time the searcher will sleep when it has no input
  type: string
  inputBinding:
    prefix: -searchsleep
- id: in_writer_queue
  doc: Size of the output queue
  type: long
  inputBinding:
    prefix: -writerqueue
- id: in_writer_sleep
  doc: Time the writer will sleep when it has nothing to write
  type: string
  inputBinding:
    prefix: -writersleep
- id: in_writer_warnings
  doc: Enable warning messages for the writer
  type: boolean
  inputBinding:
    prefix: -writerwarnings
- id: in_build_tables
  doc: "If 'datfile' doesn't exist, build the tables, write\nthem to 'datfile' and\
    \ exit."
  type: File
  inputBinding:
    prefix: -buildtables
- id: in_use_tables
  doc: "Load the tables from 'datfile' file and do the compute.\nIf 'datfile' doesn't\
    \ exist, an implicit -buildtables is\nperformed."
  type: File
  inputBinding:
    prefix: -usetables
- id: in_mask
  doc: Ignore all mers listed in file f
  type: File
  inputBinding:
    prefix: -mask
- id: in_only
  doc: Use only the mers listed in file f
  type: File
  inputBinding:
    prefix: -only
- id: in_cdna
  doc: Query sequences (the cDNA, the stream)
  type: string
  inputBinding:
    prefix: -cdna
- id: in_stream
  doc: An alias for -cdna
  type: boolean
  inputBinding:
    prefix: -stream
- id: in_genomic
  doc: Database sequences (the genome, the table)
  type: string
  inputBinding:
    prefix: -genomic
- id: in_table
  doc: An alias for -genomic)
  type: boolean
  inputBinding:
    prefix: -table
- id: in_verbose
  doc: Entertain the user
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_binary
  doc: Write the hits in a binary format
  type: boolean
  inputBinding:
    prefix: -binary
- id: in_output
  doc: Write output to file f
  type: File
  inputBinding:
    prefix: -output
- id: in_count
  doc: Write counts of hits to file f
  type: File
  inputBinding:
    prefix: -count
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to file f
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- seagen
