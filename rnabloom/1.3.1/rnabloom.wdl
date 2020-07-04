version 1.0

task Rnabloom {
  input {
    File? left_reads_files
    File? right_reads_files
    File? pool
    File? long
    File? ref
    Boolean? rev_comp_left
    Boolean? rev_comp_right
    Boolean? rev_comp_long
    Boolean? stranded
    String? name
    String? prefix
    Boolean? uracil
    Int? threads
    File? outdir
    Boolean? force
    Int? km_er
    Int? stage
    Int? qual_dbg
    Int? qual_frag
    Int? min_cov
    Int? hash
    Int? sbf_hash
    Int? dbg_bf_hash
    Int? cbf_hash
    Int? pkb_f_hash
    Int? num_km_ers
    Boolean? nt_card
    Float? memory
    Float? sbf_mem
    Float? dbg_bf_mem
    Float? cbf_mem
    Float? pkb_f_mem
    Float? fpr
    Boolean? save_bf
    Int? tip_length
    Int? look_ahead
    Int? sample
    Int? err_corr_it_r
    Float? max_cov_grad
    Int? in_del
    Float? percent
    Int? length
    Boolean? norr
    Boolean? merge_pool
    Int? overlap
    Int? bound
    Boolean? extend
    Boolean? no_fc
    Boolean? sensitive
    Boolean? artifact
    Boolean? chimera
    String? stratum
    Int? minimum_number_consecutive
    Int? polya
    String? mm_opt
    Float? l_rop
    Int? lrrd
    Boolean? lrp_b
    Boolean? debug
    String? jar
    String java
  }
  command <<<
    rnabloom \
      ~{java} \
      ~{if defined(left_reads_files) then ("--left " +  '"' + left_reads_files + '"') else ""} \
      ~{if defined(right_reads_files) then ("--right " +  '"' + right_reads_files + '"') else ""} \
      ~{if defined(pool) then ("--pool " +  '"' + pool + '"') else ""} \
      ~{if defined(long) then ("-long " +  '"' + long + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="--revcomp-left" false="" rev_comp_left} \
      ~{true="--revcomp-right" false="" rev_comp_right} \
      ~{true="--revcomp-long" false="" rev_comp_long} \
      ~{true="--stranded" false="" stranded} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--uracil" false="" uracil} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(stage) then ("-stage " +  '"' + stage + '"') else ""} \
      ~{if defined(qual_dbg) then ("--qual-dbg " +  '"' + qual_dbg + '"') else ""} \
      ~{if defined(qual_frag) then ("--qual-frag " +  '"' + qual_frag + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(hash) then ("-hash " +  '"' + hash + '"') else ""} \
      ~{if defined(sbf_hash) then ("--sbf-hash " +  '"' + sbf_hash + '"') else ""} \
      ~{if defined(dbg_bf_hash) then ("--dbgbf-hash " +  '"' + dbg_bf_hash + '"') else ""} \
      ~{if defined(cbf_hash) then ("--cbf-hash " +  '"' + cbf_hash + '"') else ""} \
      ~{if defined(pkb_f_hash) then ("--pkbf-hash " +  '"' + pkb_f_hash + '"') else ""} \
      ~{if defined(num_km_ers) then ("--num-kmers " +  '"' + num_km_ers + '"') else ""} \
      ~{true="-ntcard" false="" nt_card} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(sbf_mem) then ("--sbf-mem " +  '"' + sbf_mem + '"') else ""} \
      ~{if defined(dbg_bf_mem) then ("--dbgbf-mem " +  '"' + dbg_bf_mem + '"') else ""} \
      ~{if defined(cbf_mem) then ("--cbf-mem " +  '"' + cbf_mem + '"') else ""} \
      ~{if defined(pkb_f_mem) then ("--pkbf-mem " +  '"' + pkb_f_mem + '"') else ""} \
      ~{if defined(fpr) then ("--fpr " +  '"' + fpr + '"') else ""} \
      ~{true="-savebf" false="" save_bf} \
      ~{if defined(tip_length) then ("-tiplength " +  '"' + tip_length + '"') else ""} \
      ~{if defined(look_ahead) then ("-lookahead " +  '"' + look_ahead + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(err_corr_it_r) then ("--errcorritr " +  '"' + err_corr_it_r + '"') else ""} \
      ~{if defined(max_cov_grad) then ("--maxcovgrad " +  '"' + max_cov_grad + '"') else ""} \
      ~{if defined(in_del) then ("-indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{true="-norr" false="" norr} \
      ~{true="-mergepool" false="" merge_pool} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(bound) then ("-bound " +  '"' + bound + '"') else ""} \
      ~{true="-extend" false="" extend} \
      ~{true="-nofc" false="" no_fc} \
      ~{true="-sensitive" false="" sensitive} \
      ~{true="-artifact" false="" artifact} \
      ~{true="-chimera" false="" chimera} \
      ~{if defined(stratum) then ("-stratum " +  '"' + stratum + '"') else ""} \
      ~{if defined(minimum_number_consecutive) then ("-pair " +  '"' + minimum_number_consecutive + '"') else ""} \
      ~{if defined(polya) then ("--polya " +  '"' + polya + '"') else ""} \
      ~{if defined(mm_opt) then ("-mmopt " +  '"' + mm_opt + '"') else ""} \
      ~{if defined(l_rop) then ("-lrop " +  '"' + l_rop + '"') else ""} \
      ~{if defined(lrrd) then ("-lrrd " +  '"' + lrrd + '"') else ""} \
      ~{true="-lrpb" false="" lrp_b} \
      ~{true="-debug" false="" debug} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    left_reads_files: "left reads file(s)"
    right_reads_files: "right reads file(s)"
    pool: "list of read files for pooled assembly"
    long: "long reads file(s) (Requires `minimap2` and `racon` in PATH. Presets `-k 17 -c 3 -indel 10 -e 3 -p 0.8 -overlap 200 -tip 100` unless each option is defined otherwise.)"
    ref: "reference transcripts file(s) for guiding the assembly process"
    rev_comp_left: "reverse-complement left reads [false]"
    rev_comp_right: "reverse-complement right reads [false]"
    rev_comp_long: "reverse-complement long reads [false]"
    stranded: "reads are strand specific [false]"
    name: "assembly name [rnabloom]"
    prefix: "name prefix in FASTA header for assembled transcripts"
    uracil: "output uracils (U) in place of thymines (T) in assembled transcripts [false]"
    threads: "number of threads to run [2]"
    outdir: "output directory [/tmp/tmpghdi8viy/rnabloom_assembly]"
    force: "force overwrite existing files [false]"
    km_er: "k-mer size [25]"
    stage: "assembly termination stage short reads: [3] 1. construct graph 2. assemble fragments 3. assemble transcripts long reads: [3] 1. construct graph 2. correct reads 3. assemble transcripts"
    qual_dbg: "minimum base quality in reads for constructing DBG [3]"
    qual_frag: "minimum base quality in reads for fragment reconstruction [3]"
    min_cov: "minimum k-mer coverage [1]"
    hash: "number of hash functions for all Bloom filters [2]"
    sbf_hash: "number of hash functions for screening Bloom filter [2]"
    dbg_bf_hash: "number of hash functions for de Bruijn graph Bloom filter [2]"
    cbf_hash: "number of hash functions for k-mer counting Bloom filter [2]"
    pkb_f_hash: "number of hash functions for paired k-mers Bloom filter [2]"
    num_km_ers: "expected number of unique k-mers in input reads"
    nt_card: "count unique k-mers in input reads with ntCard [false] (Requires `ntcard` in PATH. If this option is used along with `-long`, the value for `-c` is set automatically based on the ntCard histogram, unless `-c` is defined otherwise)"
    memory: "total amount of memory (GB) for all Bloom filters [auto]"
    sbf_mem: "amount of memory (GB) for screening Bloom filter [auto]"
    dbg_bf_mem: "amount of memory (GB) for de Bruijn graph Bloom filter [auto]"
    cbf_mem: "amount of memory (GB) for k-mer counting Bloom filter [auto]"
    pkb_f_mem: "amount of memory (GB) for paired kmers Bloom filter [auto]"
    fpr: "maximum allowable false-positive rate of Bloom filters [0.01]"
    save_bf: "save graph (Bloom filters) from stage 1 to disk [false]"
    tip_length: "maximum number of bases in a tip [5]"
    look_ahead: "number of k-mers to look ahead during graph traversal [3]"
    sample: "sample size for estimating read/fragment lengths [1000]"
    err_corr_it_r: "number of iterations of error-correction in reads [1]"
    max_cov_grad: "maximum k-mer coverage gradient for error correction [0.50]"
    in_del: "maximum size of indels to be collapsed [1]"
    percent: "minimum percent identity of sequences to be collapsed [0.90]"
    length: "minimum transcript length in output assembly [200]"
    norr: "skip redundancy reduction for assembled transcripts [false] (will not create 'transcripts.nr.fa')"
    merge_pool: "merge pooled assemblies [false] (Requires `-pool`; overrides `-norr`)"
    overlap: "minimum number of overlapping bases between reads [10]"
    bound: "maximum distance between read mates [500]"
    extend: "extend fragments outward during fragment reconstruction [false]"
    no_fc: "turn off assembly consistency with fragment paired k-mers [false]"
    sensitive: "assemble transcripts in sensitive mode [false]"
    artifact: "keep potential sequencing artifacts [false]"
    chimera: "keep potential chimeras [false]"
    stratum: "fragments lower than the specified stratum are extended only if they are branch-free in the graph [e0]"
    minimum_number_consecutive: "minimum number of consecutive k-mer pairs for assembling transcripts [10]"
    polya: "prioritize assembly of transcripts with poly-A tails of the minimum length specified [0]"
    mm_opt: "options for minimap2 [-r 150] (`-x` and `-t` are already in use)"
    l_rop: "minimum proportion of matching bases within long-read overlaps [0.4]"
    lrrd: "min read depth required for long-read assembly [2]"
    lrp_b: "use PacBio preset for minimap2 [false]"
    debug: "print debugging information [false]"
    jar: ""
    java: ""
  }
}