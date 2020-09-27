class: CommandLineTool
id: hulk_sketch.cwl
inputs:
- id: in_fast_q
  doc: FASTQ file(s) to sketch (can also pipe in STDIN)
  type: File
  inputBinding:
    prefix: --fastq
- id: in_fast_a
  doc: tells HULK that the input file is actually FASTA format (.fna/.fasta/.fa),
    not FASTQ (experimental feature)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_window_size
  doc: minimizer window size (default 9)
  type: long
  inputBinding:
    prefix: --windowSize
- id: in_interval
  doc: size of k-mer sampling interval (default 0 (= no interval))
  type: long
  inputBinding:
    prefix: --interval
- id: in_sketch_size
  doc: size of sketch (default 50)
  type: long
  inputBinding:
    prefix: --sketchSize
- id: in_decay_ratio
  doc: decay ratio used for concept drift (1.0 = concept drift disabled) (default
    1)
  type: double
  inputBinding:
    prefix: --decayRatio
- id: in_stream
  doc: prints the sketches to STDOUT after every interval is reached, whilst still
    writting them to disk (log file is redirected to disk))
  type: boolean
  inputBinding:
    prefix: --stream
- id: in_banner_label
  doc: adds a label to the sketch object, for use with BANNER (default "blank")
  type: string
  inputBinding:
    prefix: --bannerLabel
- id: in_k_hf
  doc: also generate a MinHash K-Hash Functions sketch
  type: boolean
  inputBinding:
    prefix: --khf
- id: in_kmv
  doc: also generate a MinHash K-Minimum Values (bottom-k) sketch
  type: boolean
  inputBinding:
    prefix: --kmv
- id: in_km_er_size
  doc: minimizer k-mer length (default 21)
  type: long
  inputBinding:
    prefix: --kmerSize
- id: in_log
  doc: filename for log file, if omitted then STDOUT used by default
  type: File
  inputBinding:
    prefix: --log
- id: in_outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200909212826")
  type: Directory
  inputBinding:
    prefix: --outFile
- id: in_processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile HULK using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hulk
- sketch
