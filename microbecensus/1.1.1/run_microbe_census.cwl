class: CommandLineTool
id: run_microbe_census.py.cwl
inputs:
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
- id: v
  doc: print program's progress to stdout (default = False)
  type: boolean
  inputBinding:
    prefix: -v
- id: r
  doc: path to external RAPsearch2 v2.15 binary; useful if precompiled RAPsearch2
    v2.15 binary included with MicrobeCensus does not work on your system
  type: string
  inputBinding:
    prefix: -r
- id: n
  doc: number of reads to sample from SEQFILES and use for average genome size estimation.
    to use all reads set to 100000000. (default = 2000000)
  type: string
  inputBinding:
    prefix: -n
- id: t
  doc: number of threads to use for database search (default = 1)
  type: string
  inputBinding:
    prefix: -t
- id: e
  doc: quit after average genome size is obtained and do not estimate the number of
    genome equivalents in SEQFILES. useful in combination with -n for quick tests
    (default = False)
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: '{50,60,70,80,90,100,110,120,130,140,150,175,200,225,250,300,350,400,450,500}
    all reads trimmed to this length; reads shorter than this discarded (default =
    median read length)'
  type: boolean
  inputBinding:
    prefix: -l
- id: q
  doc: minimum base-level PHRED quality score (default = -5; no filtering)
  type: long
  inputBinding:
    prefix: -q
- id: m
  doc: minimum read-level PHRED quality score (default = -5; no filtering)
  type: string
  inputBinding:
    prefix: -m
- id: d
  doc: filter duplicate reads (default = False)
  type: boolean
  inputBinding:
    prefix: -d
- id: u
  doc: max percent of unknown bases per read (default = 100 percent; no filtering)
  type: long
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- run_microbe_census.py
