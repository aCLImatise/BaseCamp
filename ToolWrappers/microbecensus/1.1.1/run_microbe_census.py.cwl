class: CommandLineTool
id: run_microbe_census.py.cwl
inputs:
- id: in_print_programs_progress
  doc: print program's progress to stdout (default = False)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_path_external_rapsearch
  doc: "path to external RAPsearch2 v2.15 binary; useful if\nprecompiled RAPsearch2\
    \ v2.15 binary included with\nMicrobeCensus does not work on your system"
  type: File?
  inputBinding:
    prefix: -r
- id: in_number_reads_sample
  doc: "number of reads to sample from SEQFILES and use for\naverage genome size estimation.\
    \ to use all reads set\nto 100000000. (default = 2000000)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_number_threads_use
  doc: "number of threads to use for database search (default\n= 1)"
  type: long?
  inputBinding:
    prefix: -t
- id: in_quit_size_obtained
  doc: "quit after average genome size is obtained and do not\nestimate the number\
    \ of genome equivalents in SEQFILES.\nuseful in combination with -n for quick\
    \ tests (default\n= False)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_reads_trimmed_length
  doc: "all reads trimmed to this length; reads shorter than\nthis discarded (default\
    \ = median read length)"
  type: string?
  inputBinding:
    prefix: -l
- id: in_minimum_baselevel_phred
  doc: "minimum base-level PHRED quality score (default = -5;\nno filtering)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_readlevel_phred
  doc: "minimum read-level PHRED quality score (default = -5;\nno filtering)"
  type: long?
  inputBinding:
    prefix: -m
- id: in_filter_duplicate_reads
  doc: filter duplicate reads (default = False)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_max_percent_filtering
  doc: "max percent of unknown bases per read (default = 100\npercent; no filtering)\n"
  type: long?
  inputBinding:
    prefix: -u
- id: in_var_10
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_seq_files
  doc: "path to input metagenome(s); for paired-end\nmetagenomes use commas to specify\
    \ each file (ex:\nread_1.fq.gz,read_2.fq.gz); can be FASTQ/FASTA; can be\ngzip\
    \ (.gz) or bzip (.bz2) compressed"
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: path to output file containing results
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_microbe_census.py
