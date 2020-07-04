class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/run_microbe_census.py.cwl
inputs:
- id: print_programs_progress
  doc: print program's progress to stdout (default = False)
  type: boolean
  inputBinding:
    prefix: -v
- id: path_external_rapsearch
  doc: path to external RAPsearch2 v2.15 binary; useful if precompiled RAPsearch2
    v2.15 binary included with MicrobeCensus does not work on your system
  type: string
  inputBinding:
    prefix: -r
- id: number_reads_sample
  doc: number of reads to sample from SEQFILES and use for average genome size estimation.
    to use all reads set to 100000000. (default = 2000000)
  type: string
  inputBinding:
    prefix: -n
- id: number_threads_use
  doc: number of threads to use for database search (default = 1)
  type: string
  inputBinding:
    prefix: -t
- id: quit_size_obtained
  doc: quit after average genome size is obtained and do not estimate the number of
    genome equivalents in SEQFILES. useful in combination with -n for quick tests
    (default = False)
  type: boolean
  inputBinding:
    prefix: -e
- id: reads_trimmed_length
  doc: all reads trimmed to this length; reads shorter than this discarded (default
    = median read length)
  type: string
  inputBinding:
    prefix: -l
- id: minimum_baselevel_phred
  doc: minimum base-level PHRED quality score (default = -5; no filtering)
  type: long
  inputBinding:
    prefix: -q
- id: minimum_readlevel_phred
  doc: minimum read-level PHRED quality score (default = -5; no filtering)
  type: string
  inputBinding:
    prefix: -m
- id: filter_duplicate_reads
  doc: filter duplicate reads (default = False)
  type: boolean
  inputBinding:
    prefix: -d
- id: max_percent_unknown
  doc: max percent of unknown bases per read (default = 100 percent; no filtering)
  type: long
  inputBinding:
    prefix: -u
- id: var_10
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: seq_files
  doc: 'path to input metagenome(s); for paired-end metagenomes use commas to specify
    each file (ex: read_1.fq.gz,read_2.fq.gz); can be FASTQ/FASTA; can be gzip (.gz)
    or bzip (.bz2) compressed'
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: path to output file containing results
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- run_microbe_census.py
