class: CommandLineTool
id: hulk_sketch.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q
  doc: FASTQ file(s) to sketch (can also pipe in STDIN)
  type: string
  inputBinding:
    prefix: --fastq
- id: fast_a
  doc: tells HULK that the input file is actually FASTA format (.fna/.fasta/.fa),
    not FASTQ (experimental feature)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: window_size
  doc: minimizer window size (default 9)
  type: string
  inputBinding:
    prefix: --windowSize
- id: interval
  doc: size of k-mer sampling interval (default 0 (= no interval))
  type: string
  inputBinding:
    prefix: --interval
- id: sketch_size
  doc: size of sketch (default 50)
  type: string
  inputBinding:
    prefix: --sketchSize
- id: decay_ratio
  doc: decay ratio used for concept drift (1.0 = concept drift disabled) (default
    1)
  type: double
  inputBinding:
    prefix: --decayRatio
- id: stream
  doc: prints the sketches to STDOUT after every interval is reached, whilst still
    writting them to disk (log file is redirected to disk))
  type: boolean
  inputBinding:
    prefix: --stream
- id: banner_label
  doc: adds a label to the sketch object, for use with BANNER (default "blank")
  type: string
  inputBinding:
    prefix: --bannerLabel
- id: k_hf
  doc: also generate a MinHash K-Hash Functions sketch
  type: boolean
  inputBinding:
    prefix: --khf
- id: kmv
  doc: also generate a MinHash K-Minimum Values (bottom-k) sketch
  type: boolean
  inputBinding:
    prefix: --kmv
- id: km_er_size
  doc: minimizer k-mer length (default 21)
  type: string
  inputBinding:
    prefix: --kmerSize
- id: log
  doc: filename for log file, if omitted then STDOUT used by default
  type: string
  inputBinding:
    prefix: --log
- id: outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200428124320")
  type: string
  inputBinding:
    prefix: --outFile
- id: processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: profiling
  doc: create the files needed to profile HULK using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs: []
cwlVersion: v1.1
baseCommand:
- hulk
- sketch
