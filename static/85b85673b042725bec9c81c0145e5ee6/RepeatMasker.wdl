version 1.0

task RepeatMasker {
  input {
    Boolean? pa
    Boolean? slow_search_more
    Boolean? quick_search_sensitive
    Int? qq
    Boolean? no_low
    Boolean? no_int
    Boolean? no_rna
    Boolean? alu
    Boolean? div
    Boolean? lib
    Boolean? cut_off
    String? species
    Boolean? is_only
    Boolean? is_clip
    Boolean? no_is
    Boolean? gc
    Boolean? gc_calc
    Boolean? frag
    Boolean? no_cut
    Boolean? noisy
    Boolean? no_post
    File? dir
    File? lignmentswrites_alignments_file
    Boolean? in_v
    Boolean? l_cam_big
    Boolean? small
    Boolean? xsmall
    Boolean? returns_repetitive_regions_masked
    Boolean? poly
    Boolean? source
    File? html
    File? ace
    Boolean? gff
    Boolean? creates_additional_file
    Boolean? no_id
    Boolean? xclncalculates_repeat_densities
    File? libdir
    String? default_search_engine
    File? crossmatch_dir
    File? rmb_last_dir
    File? hmmer_dir
    File? abb_last_dir
    File? trf_prgm
    String sequence_dot
    String process_repeats
  }
  command <<<
    RepeatMasker \
      ~{sequence_dot} \
      ~{process_repeats} \
      ~{if (pa) then "-pa" else ""} \
      ~{if (slow_search_more) then "-s" else ""} \
      ~{if (quick_search_sensitive) then "-q" else ""} \
      ~{if defined(qq) then ("-qq " +  '"' + qq + '"') else ""} \
      ~{if (no_low) then "-nolow" else ""} \
      ~{if (no_int) then "-noint" else ""} \
      ~{if (no_rna) then "-norna" else ""} \
      ~{if (alu) then "-alu" else ""} \
      ~{if (div) then "-div" else ""} \
      ~{if (lib) then "-lib" else ""} \
      ~{if (cut_off) then "-cutoff" else ""} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if (is_only) then "-is_only" else ""} \
      ~{if (is_clip) then "-is_clip" else ""} \
      ~{if (no_is) then "-no_is" else ""} \
      ~{if (gc) then "-gc" else ""} \
      ~{if (gc_calc) then "-gccalc" else ""} \
      ~{if (frag) then "-frag" else ""} \
      ~{if (no_cut) then "-nocut" else ""} \
      ~{if (noisy) then "-noisy" else ""} \
      ~{if (no_post) then "-nopost" else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if (lignmentswrites_alignments_file) then "-a" else ""} \
      ~{if (in_v) then "-inv" else ""} \
      ~{if (l_cam_big) then "-lcambig" else ""} \
      ~{if (small) then "-small" else ""} \
      ~{if (xsmall) then "-xsmall" else ""} \
      ~{if (returns_repetitive_regions_masked) then "-x" else ""} \
      ~{if (poly) then "-poly" else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (ace) then "-ace" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (creates_additional_file) then "-u" else ""} \
      ~{if (no_id) then "-no_id" else ""} \
      ~{if (xclncalculates_repeat_densities) then "-e" else ""} \
      ~{if defined(libdir) then ("-libdir " +  '"' + libdir + '"') else ""} \
      ~{if defined(default_search_engine) then ("-default_search_engine " +  '"' + default_search_engine + '"') else ""} \
      ~{if defined(crossmatch_dir) then ("-crossmatch_dir " +  '"' + crossmatch_dir + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(hmmer_dir) then ("-hmmer_dir " +  '"' + hmmer_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  parameter_meta {
    pa: "(rallel) [number]\\nThe number of sequence batch jobs [50kb minimum] to run in parallel.\\nRepeatMasker will fork off this number of parallel jobs, each\\nrunning the search engine specified. For each search engine\\ninvocation ( where applicable ) a fixed the number of cores/threads\\nis used:\\nRMBlast     4 cores\\nABBlast     4 cores\\nnhmmer      2 cores\\ncrossmatch  1 core\\nTo estimate the number of cores a RepeatMasker run will use simply\\nmultiply the -pa value by the number of cores the particular search\\nengine will use."
    slow_search_more: "Slow search; 0-5% more sensitive, 2-3 times slower than default"
    quick_search_sensitive: "Quick search; 5-10% less sensitive, 2-5 times faster than default"
    qq: "job; about 10% less sensitive, 4->10 times faster than default\\n(quick searches are fine under most circumstances) repeat options"
    no_low: "Does not mask low_complexity DNA or simple repeats"
    no_int: "Only masks low complex/simple repeats (no interspersed repeats)"
    no_rna: "Does not mask small RNA (pseudo) genes"
    alu: "Only masks Alus (and 7SLRNA, SVA and LTR5)(only for primate DNA)"
    div: "[number]\\nMasks only those repeats < x percent diverged from consensus seq"
    lib: "[filename]\\nAllows use of a custom library (e.g. from another species)"
    cut_off: "[number]\\nSets cutoff score for masking repeats when using -lib (default 225)"
    species: "Specify the species or clade of the input sequence. The species name\\nmust be a valid NCBI Taxonomy Database species name and be contained\\nin the RepeatMasker repeat database. Some examples are:\\n-species human\\n-species mouse\\n-species rattus\\n-species \\\"ciona savignyi\\\"\\n-species arabidopsis\\nOther commonly used species:\\nmammal, carnivore, rodentia, rat, cow, pig, cat, dog, chicken, fugu,\\ndanio, \\\"ciona intestinalis\\\" drosophila, anopheles, worm, diatoaea,\\nartiodactyl, arabidopsis, rice, wheat, and maize"
    is_only: "Only clips E coli insertion elements out of fasta and .qual files"
    is_clip: "Clips IS elements before analysis (default: IS only reported)"
    no_is: "Skips bacterial insertion element check"
    gc: "[number]\\nUse matrices calculated for 'number' percentage background GC level"
    gc_calc: "RepeatMasker calculates the GC content even for batch files/small\\nseqs"
    frag: "[number]\\nMaximum sequence length masked without fragmenting (default 60000)"
    no_cut: "Skips the steps in which repeats are excised"
    noisy: "Prints search engine progress report to screen (defaults to .stderr\\nfile)"
    no_post: "Do not postprocess the results of the run ( i.e. call ProcessRepeats\\n). NOTE: This options should only be used when ProcessRepeats will\\nbe run manually on the results."
    dir: "[directory name]\\nWrites output to this directory (default is query file directory,\\n\\\"-dir .\\\" will write to current directory)."
    lignmentswrites_alignments_file: "(lignments)\\nWrites alignments in .align output file"
    in_v: "Alignments are presented in the orientation of the repeat (with\\noption -a)"
    l_cam_big: "Outputs ambiguous DNA transposon fragments using a lower case name.\\nAll other repeats are listed in upper case. Ambiguous fragments\\nmatch multiple repeat elements and can only be called based on\\nflanking repeat information."
    small: "Returns complete .masked sequence in lower case"
    xsmall: "Returns repetitive regions in lowercase (rest capitals) rather than\\nmasked"
    returns_repetitive_regions_masked: "Returns repetitive regions masked with Xs rather than Ns"
    poly: "Reports simple repeats that may be polymorphic (in file.poly)"
    source: "Includes for each annotation the HSP \\\"evidence\\\". Currently this\\noption is only available with the \\\"-html\\\" output format listed\\nbelow."
    html: "Creates an additional output file in xhtml format."
    ace: "Creates an additional output file in ACeDB format"
    gff: "Creates an additional Gene Feature Finding format output"
    creates_additional_file: "Creates an additional annotation file not processed by"
    no_id: "Leaves out final column with unique ID for each element (was\\ndefault)"
    xclncalculates_repeat_densities: "(xcln)\\nCalculates repeat densities (in .tbl) excluding runs of >=20 N/Xs in\\nthe query"
    libdir: "Path to the RepeatMasker libraries directory."
    default_search_engine: "The default search engine to use"
    crossmatch_dir: "The path Phil Green's cross_match program ( phrap program suite )."
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment\\nprogram."
    hmmer_dir: "The path to the HMMER profile HMM search software."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment\\nprogram."
    trf_prgm: "The full path including the name for the TRF program."
    sequence_dot: "-e(ngine) [crossmatch|wublast|abblast|ncbi|rmblast|hmmer]\\nUse an alternate search engine to the default. Note: 'ncbi' and\\n'rmblast' are both aliases for the rmblastn search engine engine.\\nThe generic NCBI blastn program is not sensitive enough for use with\\nRepeatMasker at this time."
    process_repeats: "-xm Creates an additional output file in cross_match format (for"
  }
  output {
    File out_stdout = stdout()
    File out_dir = "${in_dir}"
    File out_lignmentswrites_alignments_file = "${in_lignmentswrites_alignments_file}"
    File out_html = "${in_html}"
    File out_ace = "${in_ace}"
  }
}