class: CommandLineTool
id: rnabloom.cwl
inputs:
- id: in_left
  doc: left reads file(s)
  type: File?
  inputBinding:
    prefix: --left
- id: in_right
  doc: right reads file(s)
  type: File?
  inputBinding:
    prefix: --right
- id: in_pool
  doc: list of read files for pooled assembly
  type: File?
  inputBinding:
    prefix: --pool
- id: in_long
  doc: "long reads file(s)\n(Requires `minimap2` and `racon` in\nPATH. Presets `-k\
    \ 17 -c 3 -indel 10 -e\n3 -p 0.8 -overlap 200 -tip 100` unless\neach option is\
    \ defined otherwise.)"
  type: File?
  inputBinding:
    prefix: -long
- id: in_ref
  doc: "reference transcripts file(s) for\nguiding the assembly process"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_rev_comp_left
  doc: reverse-complement left reads [false]
  type: boolean?
  inputBinding:
    prefix: --revcomp-left
- id: in_rev_comp_right
  doc: reverse-complement right reads [false]
  type: boolean?
  inputBinding:
    prefix: --revcomp-right
- id: in_rev_comp_long
  doc: reverse-complement long reads [false]
  type: boolean?
  inputBinding:
    prefix: --revcomp-long
- id: in_stranded
  doc: reads are strand specific [false]
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_name
  doc: assembly name [rnabloom]
  type: string?
  inputBinding:
    prefix: --name
- id: in_prefix
  doc: "name prefix in FASTA header for\nassembled transcripts"
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_uracil
  doc: "output uracils (U) in place of thymines\n(T) in assembled transcripts [false]"
  type: boolean?
  inputBinding:
    prefix: --uracil
- id: in_threads
  doc: number of threads to run [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_outdir
  doc: output directory [//rnabloom_assembly]
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_force
  doc: force overwrite existing files [false]
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_km_er
  doc: k-mer size [25]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_stage
  doc: "assembly termination stage\nshort reads: [3]\n1. construct graph\n2. assemble\
    \ fragments\n3. assemble transcripts\nlong reads: [3]\n1. construct graph\n2.\
    \ correct reads\n3. assemble transcripts"
  type: long?
  inputBinding:
    prefix: -stage
- id: in_qual_dbg
  doc: "minimum base quality in reads for\nconstructing DBG [3]"
  type: long?
  inputBinding:
    prefix: --qual-dbg
- id: in_qual_frag
  doc: "minimum base quality in reads for\nfragment reconstruction [3]"
  type: long?
  inputBinding:
    prefix: --qual-frag
- id: in_min_cov
  doc: minimum k-mer coverage [1]
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_hash
  doc: "number of hash functions for all Bloom\nfilters [2]"
  type: long?
  inputBinding:
    prefix: -hash
- id: in_sbf_hash
  doc: "number of hash functions for screening\nBloom filter [2]"
  type: long?
  inputBinding:
    prefix: --sbf-hash
- id: in_dbg_bf_hash
  doc: "number of hash functions for de Bruijn\ngraph Bloom filter [2]"
  type: long?
  inputBinding:
    prefix: --dbgbf-hash
- id: in_cbf_hash
  doc: "number of hash functions for k-mer\ncounting Bloom filter [2]"
  type: long?
  inputBinding:
    prefix: --cbf-hash
- id: in_pkb_f_hash
  doc: "number of hash functions for paired\nk-mers Bloom filter [2]"
  type: long?
  inputBinding:
    prefix: --pkbf-hash
- id: in_num_km_ers
  doc: "expected number of unique k-mers in\ninput reads"
  type: long?
  inputBinding:
    prefix: --num-kmers
- id: in_nt_card
  doc: "count unique k-mers in input reads with\nntCard [false]\n(Requires `ntcard`\
    \ in PATH. If this\noption is used along with `-long`, the\nvalue for `-c` is\
    \ set automatically\nbased on the ntCard histogram, unless\n`-c` is defined otherwise)"
  type: boolean?
  inputBinding:
    prefix: -ntcard
- id: in_memory
  doc: "total amount of memory (GB) for all\nBloom filters [auto]"
  type: double?
  inputBinding:
    prefix: --memory
- id: in_sbf_mem
  doc: "amount of memory (GB) for screening\nBloom filter [auto]"
  type: double?
  inputBinding:
    prefix: --sbf-mem
- id: in_dbg_bf_mem
  doc: "amount of memory (GB) for de Bruijn\ngraph Bloom filter [auto]"
  type: double?
  inputBinding:
    prefix: --dbgbf-mem
- id: in_cbf_mem
  doc: "amount of memory (GB) for k-mer\ncounting Bloom filter [auto]"
  type: double?
  inputBinding:
    prefix: --cbf-mem
- id: in_pkb_f_mem
  doc: "amount of memory (GB) for paired kmers\nBloom filter [auto]"
  type: double?
  inputBinding:
    prefix: --pkbf-mem
- id: in_fpr
  doc: "maximum allowable false-positive rate\nof Bloom filters [0.01]"
  type: double?
  inputBinding:
    prefix: --fpr
- id: in_save_bf
  doc: "save graph (Bloom filters) from stage 1\nto disk [false]"
  type: boolean?
  inputBinding:
    prefix: -savebf
- id: in_tip_length
  doc: maximum number of bases in a tip [5]
  type: long?
  inputBinding:
    prefix: -tiplength
- id: in_look_ahead
  doc: "number of k-mers to look ahead during\ngraph traversal [3]"
  type: long?
  inputBinding:
    prefix: -lookahead
- id: in_sample
  doc: "sample size for estimating\nread/fragment lengths [1000]"
  type: long?
  inputBinding:
    prefix: -sample
- id: in_err_corr_it_r
  doc: "number of iterations of\nerror-correction in reads [1]"
  type: long?
  inputBinding:
    prefix: --errcorritr
- id: in_max_cov_grad
  doc: "maximum k-mer coverage gradient for\nerror correction [0.50]"
  type: double?
  inputBinding:
    prefix: --maxcovgrad
- id: in_in_del
  doc: "maximum size of indels to be collapsed\n[1]"
  type: long?
  inputBinding:
    prefix: -indel
- id: in_percent
  doc: "minimum percent identity of sequences\nto be collapsed [0.90]"
  type: double?
  inputBinding:
    prefix: --percent
- id: in_length
  doc: "minimum transcript length in output\nassembly [200]"
  type: long?
  inputBinding:
    prefix: -length
- id: in_norr
  doc: "skip redundancy reduction for assembled\ntranscripts [false]\n(will not create\
    \ 'transcripts.nr.fa')"
  type: boolean?
  inputBinding:
    prefix: -norr
- id: in_merge_pool
  doc: "merge pooled assemblies [false]\n(Requires `-pool`; overrides `-norr`)"
  type: boolean?
  inputBinding:
    prefix: -mergepool
- id: in_overlap
  doc: "minimum number of overlapping bases\nbetween reads [10]"
  type: long?
  inputBinding:
    prefix: -overlap
- id: in_bound
  doc: "maximum distance between read mates\n[500]"
  type: long?
  inputBinding:
    prefix: -bound
- id: in_extend
  doc: "extend fragments outward during\nfragment reconstruction [false]"
  type: boolean?
  inputBinding:
    prefix: -extend
- id: in_no_fc
  doc: "turn off assembly consistency with\nfragment paired k-mers [false]"
  type: boolean?
  inputBinding:
    prefix: -nofc
- id: in_sensitive
  doc: "assemble transcripts in sensitive mode\n[false]"
  type: boolean?
  inputBinding:
    prefix: -sensitive
- id: in_artifact
  doc: "keep potential sequencing artifacts\n[false]"
  type: boolean?
  inputBinding:
    prefix: -artifact
- id: in_chimera
  doc: keep potential chimeras [false]
  type: boolean?
  inputBinding:
    prefix: -chimera
- id: in_stratum
  doc: "fragments lower than the specified\nstratum are extended only if they are\n\
    branch-free in the graph [e0]"
  type: double?
  inputBinding:
    prefix: -stratum
- id: in_pair
  doc: "minimum number of consecutive k-mer\npairs for assembling transcripts [10]"
  type: long?
  inputBinding:
    prefix: -pair
- id: in_polya
  doc: "prioritize assembly of transcripts with\npoly-A tails of the minimum length\n\
    specified [0]"
  type: long?
  inputBinding:
    prefix: --polya
- id: in_mm_opt
  doc: "options for minimap2 [-r 150]\n(`-x` and `-t` are already in use)"
  type: long?
  inputBinding:
    prefix: -mmopt
- id: in_l_rop
  doc: "minimum proportion of matching bases\nwithin long-read overlaps [0.4]"
  type: double?
  inputBinding:
    prefix: -lrop
- id: in_lrrd
  doc: "min read depth required for long-read\nassembly [2]"
  type: long?
  inputBinding:
    prefix: -lrrd
- id: in_lrp_b
  doc: use PacBio preset for minimap2 [false]
  type: boolean?
  inputBinding:
    prefix: -lrpb
- id: in_debug
  doc: print debugging information [false]
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory [//rnabloom_assembly]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- rnabloom
