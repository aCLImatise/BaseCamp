version 1.0

task Memechip {
  input {
    Directory? dir_output_failing
    Directory? oc
    Boolean? db
    Boolean? neg
    Boolean? psp_gen
    Boolean? set_alphabet_dna
    Boolean? rna
    Boolean? order
    Boolean? seed
    Boolean? c_cut
    Boolean? group_thresh
    Boolean? group_weak
    Boolean? filter_thresh
    Boolean? time
    Boolean? desc
    Boolean? f_desc
    Boolean? norc
    Boolean? old_clustering
    Boolean? noecho
    Boolean? version
    Boolean? meme_brief
    Boolean? meme_mod
    Boolean? meme_min_w
    Boolean? meme_max_w
    Boolean? meme_n_motifs
    Boolean? meme_min_sites
    Boolean? meme_max_sites
    Boolean? meme_p
    Boolean? meme_pal
    Boolean? meme_search_size
    Boolean? meme_nr_and
    Boolean? dre_me_e
    Boolean? dre_me_m
    Boolean? centri_mo_local
    Boolean? centri_mo_score
    Boolean? centri_mo_max_reg
    Int? centri_mo_e_thresh
    Boolean? centri_mo_no_seq
    Boolean? centri_mo_flip
    Boolean? spam_o_skip
    Boolean? fimo_skip
    String bfile_path_background
  }
  command <<<
    meme_chip \
      ~{bfile_path_background} \
      ~{if (dir_output_failing) then "-o" else ""} \
      ~{if (oc) then "-oc" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (neg) then "-neg" else ""} \
      ~{if (psp_gen) then "-psp-gen" else ""} \
      ~{if (set_alphabet_dna) then "-dna" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (order) then "-order" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (c_cut) then "-ccut" else ""} \
      ~{if (group_thresh) then "-group-thresh" else ""} \
      ~{if (group_weak) then "-group-weak" else ""} \
      ~{if (filter_thresh) then "-filter-thresh" else ""} \
      ~{if (time) then "-time" else ""} \
      ~{if (desc) then "-desc" else ""} \
      ~{if (f_desc) then "-fdesc" else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if (old_clustering) then "-old-clustering" else ""} \
      ~{if (noecho) then "-noecho" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (meme_brief) then "-meme-brief" else ""} \
      ~{if (meme_mod) then "-meme-mod" else ""} \
      ~{if (meme_min_w) then "-meme-minw" else ""} \
      ~{if (meme_max_w) then "-meme-maxw" else ""} \
      ~{if (meme_n_motifs) then "-meme-nmotifs" else ""} \
      ~{if (meme_min_sites) then "-meme-minsites" else ""} \
      ~{if (meme_max_sites) then "-meme-maxsites" else ""} \
      ~{if (meme_p) then "-meme-p" else ""} \
      ~{if (meme_pal) then "-meme-pal" else ""} \
      ~{if (meme_search_size) then "-meme-searchsize" else ""} \
      ~{if (meme_nr_and) then "-meme-nrand" else ""} \
      ~{if (dre_me_e) then "-dreme-e" else ""} \
      ~{if (dre_me_m) then "-dreme-m" else ""} \
      ~{if (centri_mo_local) then "-centrimo-local" else ""} \
      ~{if (centri_mo_score) then "-centrimo-score" else ""} \
      ~{if (centri_mo_max_reg) then "-centrimo-maxreg" else ""} \
      ~{if defined(centri_mo_e_thresh) then ("-centrimo-ethresh " +  '"' + centri_mo_e_thresh + '"') else ""} \
      ~{if (centri_mo_no_seq) then "-centrimo-noseq" else ""} \
      ~{if (centri_mo_flip) then "-centrimo-flip" else ""} \
      ~{if (spam_o_skip) then "-spamo-skip" else ""} \
      ~{if (fimo_skip) then "-fimo-skip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir_output_failing: "<dir>   : output to the specified directory, failing if the directory exists"
    oc: "<dir>   : output to the specified directory, overwriting if the directory exists"
    db: "<path>  : target database for use by Tomtom and CentriMo; if not present,\\nTomtom and CentriMo are not run"
    neg: "<path>  : negative (control) sequence file name;\\nthe control sequences will be input to MEME, CentriMo and DREME,\\nand MEME will use the Differential Enrichment objective function;\\nsequences are assumed to originate from the same alphabet as the\\nprimary sequence file and should be the same length as those;\\ndefault: no negative sequences are used for MEME\\nor CentriMo, and for DREME, the primary sequences\\nare shuffled to create the negative set"
    psp_gen: "use the psp-gen program to create a position-specific\\nprior for use by MEME with its Classic objective function;\\nrequires -neg;  default: input control sequences directly\\nto MEME and use its Differential Enrichment objective function"
    set_alphabet_dna: "set the alphabet to DNA; this is the default"
    rna: "set the alphabet to RNA"
    order: "<ord>   : set the order of the Markov background model\\nthat is generated from the sequences when a\\nbackground file is not given; default: 1"
    seed: "<seed>  : seed for the randomized selection of sequences\\nfor MEME and the shuffling of sequences for DREME;\\ndefault: seed randomly"
    c_cut: "<num>   : maximum size of a sequence before it is cut down\\nto a centered section; a value of 0 indicates the\\nsequences should not be cut down; default: 100"
    group_thresh: "<gthr>  : primary threshold for clustering motifs; default: 0.05"
    group_weak: "<gwk>   : secondary threshold for clustering motifs; default: 2*gthr"
    filter_thresh: "<fthr>  : E-value threshold for including motifs; default: 0.05"
    time: "<minutes>  : maximum time that this program has to run and\\ncreate output in; default: no limit"
    desc: "<text>  : description of the job"
    f_desc: "<file>  : file containing plain text description of the job"
    norc: ": search given strand only"
    old_clustering: ": pick cluster seed motifs based only on significance;\\ndefault: preferentially select discovered motifs as\\nclustering seeds even if there is a library motif\\nthat appears more enriched"
    noecho: ": don't echo the commands run"
    version: ": print the version and exit"
    meme_brief: "<num>   : reduce size of MEME output files if more than <num>\\n: primary sequences"
    meme_mod: "[oops|zoops|anr]: sites used in a single sequence"
    meme_min_w: "<num>   : minimum motif width"
    meme_max_w: "<num>   : maximum motif width"
    meme_n_motifs: "<num>   : maximum number of motifs to find"
    meme_min_sites: "<num>   : minimum number of sites per motif"
    meme_max_sites: "<num>   : maximum number of sites per motif"
    meme_p: "<np>    : use parallel version with <np> processors"
    meme_pal: ": look for palindromes only"
    meme_search_size: "<num>   : the maximum portion of the primary sequences (in characters)\\n: used for motif search; MEME's running time increases as\\n: roughly the square of <num>"
    meme_nr_and: ": MEME should not randomize sequence order"
    dre_me_e: "<num>   : stop searching after reaching this E-value threshold"
    dre_me_m: "<num>   : stop searching after finding this many motifs"
    centri_mo_local: ": compute enrichment of all regions (not only central)"
    centri_mo_score: "<num>   : set the minimum allowed match score"
    centri_mo_max_reg: "<num>   : set the maximum region size to be considered"
    centri_mo_e_thresh: ": set the E-value threshold for reporting"
    centri_mo_no_seq: ": don't store sequence IDs in the output"
    centri_mo_flip: ": reflect matches on reverse strand around center"
    spam_o_skip: ": don't run SpaMo"
    fimo_skip: ": don't run FIMO"
    bfile_path_background: "-bfile            <path>  : background file"
  }
  output {
    File out_stdout = stdout()
    Directory out_dir_output_failing = "${in_dir_output_failing}"
    Directory out_oc = "${in_oc}"
  }
}