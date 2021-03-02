version 1.0

task LTRRetriever {
  input {
    Boolean? genome
    Boolean? in_harvest
    Boolean? in_finder
    Boolean? in_mge_scan
    Boolean? non_tgc_a
    Boolean? verbose
    Boolean? no_an_no
    Boolean? miss_char
    Boolean? n_screen
    Boolean? miss_max
    Boolean? miss_rate
    Boolean? min_len
    Boolean? max_ratio
    Boolean? min_score
    Boolean? flank_miss
    Boolean? flanks_im
    Boolean? flank_aln
    Boolean? motif
    Boolean? not_run_c
    Boolean? proco_vte
    Boolean? proco_vpl
    Boolean? pro_lens_ig
    Boolean? blast_clust
    Boolean? cd_hit
    Boolean? line_lib
    Boolean? dna_lib
    Boolean? plant_pro_lib
    Boolean? teh_mm
    Boolean? repeatmasker
    Boolean? blast_plus
    Boolean? blast
    Boolean? cd_hit_path
    Boolean? hmmer
    Boolean? trf_path
    Boolean? neutral_mutation_rate
    Boolean? step
    Boolean? threads
  }
  command <<<
    LTR_retriever \
      ~{if (genome) then "-genome" else ""} \
      ~{if (in_harvest) then "-inharvest" else ""} \
      ~{if (in_finder) then "-infinder" else ""} \
      ~{if (in_mge_scan) then "-inmgescan" else ""} \
      ~{if (non_tgc_a) then "-nonTGCA" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (no_an_no) then "-noanno" else ""} \
      ~{if (miss_char) then "-misschar" else ""} \
      ~{if (n_screen) then "-Nscreen" else ""} \
      ~{if (miss_max) then "-missmax" else ""} \
      ~{if (miss_rate) then "-missrate" else ""} \
      ~{if (min_len) then "-minlen" else ""} \
      ~{if (max_ratio) then "-max_ratio" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (flank_miss) then "-flankmiss" else ""} \
      ~{if (flanks_im) then "-flanksim" else ""} \
      ~{if (flank_aln) then "-flankaln" else ""} \
      ~{if (motif) then "-motif" else ""} \
      ~{if (not_run_c) then "-notrunc" else ""} \
      ~{if (proco_vte) then "-procovTE" else ""} \
      ~{if (proco_vpl) then "-procovPL" else ""} \
      ~{if (pro_lens_ig) then "-prolensig" else ""} \
      ~{if (blast_clust) then "-blastclust" else ""} \
      ~{if (cd_hit) then "-cdhit" else ""} \
      ~{if (line_lib) then "-linelib" else ""} \
      ~{if (dna_lib) then "-dnalib" else ""} \
      ~{if (plant_pro_lib) then "-plantprolib" else ""} \
      ~{if (teh_mm) then "-TEhmm" else ""} \
      ~{if (repeatmasker) then "-repeatmasker" else ""} \
      ~{if (blast_plus) then "-blastplus" else ""} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (cd_hit_path) then "-cdhit_path" else ""} \
      ~{if (hmmer) then "-hmmer" else ""} \
      ~{if (trf_path) then "-trf_path" else ""} \
      ~{if (neutral_mutation_rate) then "-u" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ltr_retriever:2.9.0--0"
  }
  parameter_meta {
    genome: "[File]     Specify the genome sequence file (FASTA)"
    in_harvest: "[File]     LTR-RT candidates from LTRharvest"
    in_finder: "[File]     LTR-RT candidates from LTR_FINDER"
    in_mge_scan: "[File]     LTR-RT candidates from MGEScan_LTR"
    non_tgc_a: "[File]     Non-canonical LTR-RT candidates from LTRharvest"
    verbose: "Retain intermediate outputs (developer mode)"
    no_an_no: "Disable whole genome LTR-RT annotation (no GFF3 output)"
    miss_char: "[CHR]      Specify the ambiguous character (default N)"
    n_screen: "Disable filtering ambiguous sequence in candidates"
    miss_max: "[INT]      Maximum number of ambiguous bp allowed in a candidate (default 10)"
    miss_rate: "[0-1]      Maximum percentage of ambiguous bp allowed in a candidate (default 0.8)"
    min_len: "[INT]      Minimum bp of the LTR region (default 100)"
    max_ratio: "[FLOAT]    Maximum length ratio of internal region/LTR region (default 50)"
    min_score: "[INT]      Minimum alignment length (INT/2) to identify tandem repeats (default 1000)"
    flank_miss: "[1-60]     Maximum ambiguous length (bp) allowed in 60bp-flanking sequences (default 25)"
    flanks_im: "[0-100]    Minimum percentage of identity for flanking sequence alignment (default 60)"
    flank_aln: "[0-1]      Maximum alignment portion allowed for 60bp-flanking sequences (default 0.6)"
    motif: "[[STRING]] Specify non-canonical motifs to search for\\n(default -motif [TCCA TGCT TACA TACT TGGA TATA TGTA TGCA])"
    not_run_c: "Discard truncated LTR-RTs and nested LTR-RTs (will dampen sensitivity)"
    proco_vte: "[0-1]      Maximum portion of allowed for cumulated DNA TE database and LINE database\\nlignments (default 0.7)"
    proco_vpl: "[0-1]      Maximum portion allowed for cumulated plant protein database alignments (default 0.7)"
    pro_lens_ig: "[INT]      Minimum alignment length (aa) for LINE/DNA transposase/plant protein alignment (default 30)"
    blast_clust: "[[STRING]] Trigger to use blastclust and customize parameters\\n(default -blastclust [-L .9 -b T -S 80])"
    cd_hit: "[[STRING]] Trigger to use cd-hit-est (default) and customize parameters\\n(default -cdhit [-c 0.8 -G 0.8 -s 0.9 -aL 0.9 -aS 0.9 -M 0])"
    line_lib: "[FASTA]    Provide LINE transposase database for LINE TE exclusion\\n(default /database/Tpases020812LINE)"
    dna_lib: "[FASTA]    Provide DNA TE transposase database for DNA TE exclusion\\n(default /database/Tpases020812DNA)"
    plant_pro_lib: "[FASTA]    Provide plant protein database for coding sequence exclusion\\n(default /database/alluniRefprexp082813)"
    teh_mm: "[Pfam]     Provide Pfam database for TE identification\\n(default /database/TEfam.hmm)"
    repeatmasker: "[path]    Path to the RepeatMasker program. (default: find from ENV)"
    blast_plus: "[path]     Path to the BLAST+ program. (default: find from ENV)"
    blast: "[path]     Path to the BLAST program. Required if -blastclust is used. (default: find from ENV)"
    cd_hit_path: "[path]     Path to the CD-HIT program. Required if -cdhit is used. (default: find from ENV)"
    hmmer: "[path]     Path to the HMMER program. (default: find from ENV)"
    trf_path: "[path]     Path to the trf program. (default: find from ENV)"
    neutral_mutation_rate: "[FLOAT]    Neutral mutation rate (per bp per ya) (default 1.3e-8 (from rice))"
    step: "[STRING]   Restart the program from a particular step. Existing outputs will be overwritten. Options:\\nInit (default, from the beginning);\\nMajor (Tandem repeat cleanup finished, structrual analyses next)\\nTrunc (Structural analyses finished, truncated LTR recycle next)\\nPromask (Truncated LTR recycle finished, protein contamination cleanup next)\\nLibrary (Protein contamination cleanup finished, initial library construction next)\\nNext (Initial library construction finished, non-TGCA analyses next)"
    threads: "[INT]      Number of threads (≤ total available threads, default 4)"
  }
  output {
    File out_stdout = stdout()
  }
}