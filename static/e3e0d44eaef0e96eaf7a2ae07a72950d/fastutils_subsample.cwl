class: CommandLineTool
id: fastutils_subsample.cwl
inputs:
- id: in
  doc: input file in fasta/q format. This options is required if -r or -l are used
    [stdin]
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: depth
  doc: coverage of the subsampled set [required]
  type: long
  inputBinding:
    prefix: --depth
- id: genome_size
  doc: length of the genome. Accepted suffixes are k,m,g [required]
  type: string
  inputBinding:
    prefix: --genomeSize
- id: random
  doc: subsample randomly instead of selecting top reads
  type: boolean
  inputBinding:
    prefix: --random
- id: longest
  doc: subsample longest reads instead of selecting top reads
  type: boolean
  inputBinding:
    prefix: --longest
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: comment
  doc: print comments in headers
  type: boolean
  inputBinding:
    prefix: --comment
- id: num
  doc: use read index instead of read name
  type: boolean
  inputBinding:
    prefix: --num
- id: keep
  doc: keep name as a comment when using -n
  type: boolean
  inputBinding:
    prefix: --keep
- id: fof_n
  doc: input file is a file of file names
  type: boolean
  inputBinding:
    prefix: --fofn
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- subsample
