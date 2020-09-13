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
    Directory? outdir
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
    Float? stratum
    Int? minimum_number_consecutive
    Int? polya
    Int? mm_opt
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
      ~{if (rev_comp_left) then "--revcomp-left" else ""} \
      ~{if (rev_comp_right) then "--revcomp-right" else ""} \
      ~{if (rev_comp_long) then "--revcomp-long" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (uracil) then "--uracil" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
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
      ~{if (nt_card) then "-ntcard" else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(sbf_mem) then ("--sbf-mem " +  '"' + sbf_mem + '"') else ""} \
      ~{if defined(dbg_bf_mem) then ("--dbgbf-mem " +  '"' + dbg_bf_mem + '"') else ""} \
      ~{if defined(cbf_mem) then ("--cbf-mem " +  '"' + cbf_mem + '"') else ""} \
      ~{if defined(pkb_f_mem) then ("--pkbf-mem " +  '"' + pkb_f_mem + '"') else ""} \
      ~{if defined(fpr) then ("--fpr " +  '"' + fpr + '"') else ""} \
      ~{if (save_bf) then "-savebf" else ""} \
      ~{if defined(tip_length) then ("-tiplength " +  '"' + tip_length + '"') else ""} \
      ~{if defined(look_ahead) then ("-lookahead " +  '"' + look_ahead + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(err_corr_it_r) then ("--errcorritr " +  '"' + err_corr_it_r + '"') else ""} \
      ~{if defined(max_cov_grad) then ("--maxcovgrad " +  '"' + max_cov_grad + '"') else ""} \
      ~{if defined(in_del) then ("-indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if (norr) then "-norr" else ""} \
      ~{if (merge_pool) then "-mergepool" else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(bound) then ("-bound " +  '"' + bound + '"') else ""} \
      ~{if (extend) then "-extend" else ""} \
      ~{if (no_fc) then "-nofc" else ""} \
      ~{if (sensitive) then "-sensitive" else ""} \
      ~{if (artifact) then "-artifact" else ""} \
      ~{if (chimera) then "-chimera" else ""} \
      ~{if defined(stratum) then ("-stratum " +  '"' + stratum + '"') else ""} \
      ~{if defined(minimum_number_consecutive) then ("-pair " +  '"' + minimum_number_consecutive + '"') else ""} \
      ~{if defined(polya) then ("--polya " +  '"' + polya + '"') else ""} \
      ~{if defined(mm_opt) then ("-mmopt " +  '"' + mm_opt + '"') else ""} \
      ~{if defined(l_rop) then ("-lrop " +  '"' + l_rop + '"') else ""} \
      ~{if defined(lrrd) then ("-lrrd " +  '"' + lrrd + '"') else ""} \
      ~{if (lrp_b) then "-lrpb" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    left_reads_files: "left reads file(s)"
    right_reads_files: "right reads file(s)"
    pool: "list of read files for pooled assembly"
    long: "long reads file(s)\\n(Requires `minimap2` and `racon` in\\nPATH. Presets `-k 17 -c 3 -indel 10 -e\\n3 -p 0.8 -overlap 200 -tip 100` unless\\neach option is defined otherwise.)"
    ref: "reference transcripts file(s) for\\nguiding the assembly process"
    rev_comp_left: "reverse-complement left reads [false]"
    rev_comp_right: "reverse-complement right reads [false]"
    rev_comp_long: "reverse-complement long reads [false]"
    stranded: "reads are strand specific [false]"
    name: "assembly name [rnabloom]"
    prefix: "name prefix in FASTA header for\\nassembled transcripts"
    uracil: "output uracils (U) in place of thymines\\n(T) in assembled transcripts [false]"
    threads: "number of threads to run [2]"
    outdir: "output directory [//rnabloom_assembly]"
    force: "force overwrite existing files [false]"
    km_er: "k-mer size [25]"
    stage: "assembly termination stage\\nshort reads: [3]\\n1. construct graph\\n2. assemble fragments\\n3. assemble transcripts\\nlong reads: [3]\\n1. construct graph\\n2. correct reads\\n3. assemble transcripts"
    qual_dbg: "minimum base quality in reads for\\nconstructing DBG [3]"
    qual_frag: "minimum base quality in reads for\\nfragment reconstruction [3]"
    min_cov: "minimum k-mer coverage [1]"
    hash: "number of hash functions for all Bloom\\nfilters [2]"
    sbf_hash: "number of hash functions for screening\\nBloom filter [2]"
    dbg_bf_hash: "number of hash functions for de Bruijn\\ngraph Bloom filter [2]"
    cbf_hash: "number of hash functions for k-mer\\ncounting Bloom filter [2]"
    pkb_f_hash: "number of hash functions for paired\\nk-mers Bloom filter [2]"
    num_km_ers: "expected number of unique k-mers in\\ninput reads"
    nt_card: "count unique k-mers in input reads with\\nntCard [false]\\n(Requires `ntcard` in PATH. If this\\noption is used along with `-long`, the\\nvalue for `-c` is set automatically\\nbased on the ntCard histogram, unless\\n`-c` is defined otherwise)"
    memory: "total amount of memory (GB) for all\\nBloom filters [auto]"
    sbf_mem: "amount of memory (GB) for screening\\nBloom filter [auto]"
    dbg_bf_mem: "amount of memory (GB) for de Bruijn\\ngraph Bloom filter [auto]"
    cbf_mem: "amount of memory (GB) for k-mer\\ncounting Bloom filter [auto]"
    pkb_f_mem: "amount of memory (GB) for paired kmers\\nBloom filter [auto]"
    fpr: "maximum allowable false-positive rate\\nof Bloom filters [0.01]"
    save_bf: "save graph (Bloom filters) from stage 1\\nto disk [false]"
    tip_length: "maximum number of bases in a tip [5]"
    look_ahead: "number of k-mers to look ahead during\\ngraph traversal [3]"
    sample: "sample size for estimating\\nread/fragment lengths [1000]"
    err_corr_it_r: "number of iterations of\\nerror-correction in reads [1]"
    max_cov_grad: "maximum k-mer coverage gradient for\\nerror correction [0.50]"
    in_del: "maximum size of indels to be collapsed\\n[1]"
    percent: "minimum percent identity of sequences\\nto be collapsed [0.90]"
    length: "minimum transcript length in output\\nassembly [200]"
    norr: "skip redundancy reduction for assembled\\ntranscripts [false]\\n(will not create 'transcripts.nr.fa')"
    merge_pool: "merge pooled assemblies [false]\\n(Requires `-pool`; overrides `-norr`)"
    overlap: "minimum number of overlapping bases\\nbetween reads [10]"
    bound: "maximum distance between read mates\\n[500]"
    extend: "extend fragments outward during\\nfragment reconstruction [false]"
    no_fc: "turn off assembly consistency with\\nfragment paired k-mers [false]"
    sensitive: "assemble transcripts in sensitive mode\\n[false]"
    artifact: "keep potential sequencing artifacts\\n[false]"
    chimera: "keep potential chimeras [false]"
    stratum: "fragments lower than the specified\\nstratum are extended only if they are\\nbranch-free in the graph [e0]"
    minimum_number_consecutive: "minimum number of consecutive k-mer\\npairs for assembling transcripts [10]"
    polya: "prioritize assembly of transcripts with\\npoly-A tails of the minimum length\\nspecified [0]"
    mm_opt: "options for minimap2 [-r 150]\\n(`-x` and `-t` are already in use)"
    l_rop: "minimum proportion of matching bases\\nwithin long-read overlaps [0.4]"
    lrrd: "min read depth required for long-read\\nassembly [2]"
    lrp_b: "use PacBio preset for minimap2 [false]"
    debug: "print debugging information [false]"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}