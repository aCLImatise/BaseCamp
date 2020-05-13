class: CommandLineTool
id: rnabloom.cwl
inputs:
- id: left
  doc: left reads file(s)
  type: File
  inputBinding:
    prefix: --left
- id: right
  doc: right reads file(s)
  type: File
  inputBinding:
    prefix: --right
- id: pool
  doc: list of read files for pooled assembly
  type: File
  inputBinding:
    prefix: --pool
- id: long
  doc: long reads file(s) (Requires `minimap2` and `racon` in PATH. Presets `-k 17
    -c 3 -indel 10 -e 3 -p 0.8` unless each option is defined otherwise.)
  type: File
  inputBinding:
    prefix: -long
- id: ref
  doc: reference transcripts file(s) for guiding the assembly process
  type: File
  inputBinding:
    prefix: -ref
- id: rev_comp_left
  doc: reverse-complement left reads [false]
  type: boolean
  inputBinding:
    prefix: --revcomp-left
- id: rev_comp_right
  doc: reverse-complement right reads [false]
  type: boolean
  inputBinding:
    prefix: --revcomp-right
- id: rev_comp_long
  doc: reverse-complement long reads [false]
  type: boolean
  inputBinding:
    prefix: --revcomp-long
- id: stranded
  doc: reads are strand specific [false]
  type: boolean
  inputBinding:
    prefix: --stranded
- id: name
  doc: assembly name [rnabloom]
  type: string
  inputBinding:
    prefix: --name
- id: prefix
  doc: name prefix in FASTA header for assembled transcripts
  type: string
  inputBinding:
    prefix: -prefix
- id: uracil
  doc: output uracils (U) in place of thymines (T) in assembled transcripts [false]
  type: boolean
  inputBinding:
    prefix: --uracil
- id: threads
  doc: number of threads to run [2]
  type: long
  inputBinding:
    prefix: --threads
- id: outdir
  doc: output directory [/tmp/tmpjkifujqe/rnabloom_a ssembly]
  type: File
  inputBinding:
    prefix: --outdir
- id: force
  doc: force overwrite existing files [false]
  type: boolean
  inputBinding:
    prefix: --force
- id: km_er
  doc: k-mer size [25]
  type: long
  inputBinding:
    prefix: --kmer
- id: stage
  doc: 'assembly termination stage short reads: [3] 1. construct graph 2. assemble
    fragments 3. assemble transcripts long reads: [4] 1. construct graph 2. correct
    reads 3. cluster reads 4. assemble transcripts'
  type: long
  inputBinding:
    prefix: -stage
- id: qual_dbg
  doc: minimum base quality in reads for constructing DBG [3]
  type: long
  inputBinding:
    prefix: --qual-dbg
- id: qual_frag
  doc: minimum base quality in reads for fragment reconstruction [3]
  type: long
  inputBinding:
    prefix: --qual-frag
- id: min_cov
  doc: minimum k-mer coverage [1]
  type: long
  inputBinding:
    prefix: --mincov
- id: hash
  doc: number of hash functions for all Bloom filters [2]
  type: long
  inputBinding:
    prefix: -hash
- id: sbf_hash
  doc: number of hash functions for screening Bloom filter [2]
  type: long
  inputBinding:
    prefix: --sbf-hash
- id: dbg_bf_hash
  doc: number of hash functions for de Bruijn graph Bloom filter [2]
  type: long
  inputBinding:
    prefix: --dbgbf-hash
- id: cbf_hash
  doc: number of hash functions for k-mer counting Bloom filter [2]
  type: long
  inputBinding:
    prefix: --cbf-hash
- id: pkb_f_hash
  doc: number of hash functions for paired k-mers Bloom filter [2]
  type: long
  inputBinding:
    prefix: --pkbf-hash
- id: num_km_ers
  doc: expected number of unique k-mers in input reads
  type: long
  inputBinding:
    prefix: --num-kmers
- id: nt_card
  doc: count unique k-mers in input reads with ntCard [false] (Requires `ntcard` in
    PATH. If this option is used along with `-long`, the value for `-c` is set automatically
    based on the ntCard histogram, unless `-c` is defined otherwise)
  type: boolean
  inputBinding:
    prefix: -ntcard
- id: memory
  doc: total amount of memory (GB) for all Bloom filters [auto]
  type: double
  inputBinding:
    prefix: --memory
- id: sbf_mem
  doc: amount of memory (GB) for screening Bloom filter [auto]
  type: double
  inputBinding:
    prefix: --sbf-mem
- id: dbg_bf_mem
  doc: amount of memory (GB) for de Bruijn graph Bloom filter [auto]
  type: double
  inputBinding:
    prefix: --dbgbf-mem
- id: cbf_mem
  doc: amount of memory (GB) for k-mer counting Bloom filter [auto]
  type: double
  inputBinding:
    prefix: --cbf-mem
- id: pkb_f_mem
  doc: amount of memory (GB) for paired kmers Bloom filter [auto]
  type: double
  inputBinding:
    prefix: --pkbf-mem
- id: fpr
  doc: maximum allowable false-positive rate of Bloom filters [0.01]
  type: double
  inputBinding:
    prefix: --fpr
- id: save_bf
  doc: save graph (Bloom filters) from stage 1 to disk [false]
  type: boolean
  inputBinding:
    prefix: -savebf
- id: tip_length
  doc: maximum branch length to be considered a tip [5]
  type: long
  inputBinding:
    prefix: -tiplength
- id: look_ahead
  doc: number of k-mers to look ahead during graph traversal [3]
  type: long
  inputBinding:
    prefix: -lookahead
- id: sample
  doc: sample size for estimating read/fragment lengths [1000]
  type: long
  inputBinding:
    prefix: -sample
- id: err_corr_it_r
  doc: number of iterations of error-correction in reads [1]
  type: long
  inputBinding:
    prefix: --errcorritr
- id: max_cov_grad
  doc: maximum k-mer coverage gradient for error correction [0.50]
  type: double
  inputBinding:
    prefix: --maxcovgrad
- id: in_del
  doc: maximum size of indels to be collapsed [1]
  type: long
  inputBinding:
    prefix: -indel
- id: percent
  doc: minimum percent identity of sequences to be collapsed [0.90]
  type: double
  inputBinding:
    prefix: --percent
- id: length
  doc: minimum transcript length in output assembly [200]
  type: long
  inputBinding:
    prefix: -length
- id: norr
  doc: skip redundancy reduction for assembled transcripts [false] (will not create
    'transcripts.nr.fa')
  type: boolean
  inputBinding:
    prefix: -norr
- id: merge_pool
  doc: merge pooled assemblies [false] (Requires `-pool`; overrides `-norr`)
  type: boolean
  inputBinding:
    prefix: -mergepool
- id: overlap
  doc: minimum number of overlapping bases between read mates [10]
  type: long
  inputBinding:
    prefix: -overlap
- id: bound
  doc: maximum distance between read mates [500]
  type: long
  inputBinding:
    prefix: -bound
- id: extend
  doc: extend fragments outward during fragment reconstruction [false]
  type: boolean
  inputBinding:
    prefix: -extend
- id: no_fc
  doc: turn off assembly consistency with fragment paired k-mers [false]
  type: boolean
  inputBinding:
    prefix: -nofc
- id: sensitive
  doc: assemble transcripts in sensitive mode [false]
  type: boolean
  inputBinding:
    prefix: -sensitive
- id: artifact
  doc: keep potential sequencing artifacts [false]
  type: boolean
  inputBinding:
    prefix: -artifact
- id: chimera
  doc: keep potential chimeras [false]
  type: boolean
  inputBinding:
    prefix: -chimera
- id: stratum
  doc: <01|e0|e1|e2|e3|e4|e5>              fragments lower than the specified stratum
    are extended only if they are branch-free in the graph [e0]
  type: boolean
  inputBinding:
    prefix: -stratum
- id: pair
  doc: minimum number of consecutive k-mer pairs for assembling transcripts [10]
  type: long
  inputBinding:
    prefix: -pair
- id: polya
  doc: prioritize assembly of transcripts with poly-A tails of the minimum length
    specified [0]
  type: long
  inputBinding:
    prefix: --polya
- id: mm_opt
  doc: options for minimap2 [-r 150] (`-x` and `-t` are already in use)
  type: string
  inputBinding:
    prefix: -mmopt
- id: debug
  doc: print debugging information [false]
  type: boolean
  inputBinding:
    prefix: -debug
- id: hpc
  doc: use homopolymer-compressed minimizers in long-read clustering [false] (Requires
    `-long`)
  type: boolean
  inputBinding:
    prefix: -hpc
- id: minimizer
  doc: minimizer size [13]
  type: long
  inputBinding:
    prefix: --minimizer
- id: minimizer_window
  doc: minimizer window size [15]
  type: long
  inputBinding:
    prefix: --minimizer-window
- id: sketch_overlap_proportion
  doc: minimum proportion of sketch overlap minimizers [0.7]
  type: double
  inputBinding:
    prefix: --sketch-overlap-proportion
- id: sketch_overlap_number
  doc: minimum number of sketch overlap minimizers [30]
  type: long
  inputBinding:
    prefix: --sketch-overlap-number
outputs: []
cwlVersion: v1.1
baseCommand:
- rnabloom
