version 1.0

task MemeChip {
  input {
    Boolean? b_file
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
    String? centri_mo_e_thresh
    Boolean? centri_mo_no_seq
    Boolean? centri_mo_flip
    Boolean? spam_o_skip
    Boolean? fimo_skip
    String? db
  }
  command <<<
    meme-chip \
      ~{true="-bfile" false="" b_file} \
      ~{true="-order" false="" order} \
      ~{true="-seed" false="" seed} \
      ~{true="-ccut" false="" c_cut} \
      ~{true="-group-thresh" false="" group_thresh} \
      ~{true="-group-weak" false="" group_weak} \
      ~{true="-filter-thresh" false="" filter_thresh} \
      ~{true="-time" false="" time} \
      ~{true="-desc" false="" desc} \
      ~{true="-fdesc" false="" f_desc} \
      ~{true="-norc" false="" norc} \
      ~{true="-old-clustering" false="" old_clustering} \
      ~{true="-noecho" false="" noecho} \
      ~{true="-version" false="" version} \
      ~{true="-meme-brief" false="" meme_brief} \
      ~{true="-meme-mod" false="" meme_mod} \
      ~{true="-meme-minw" false="" meme_min_w} \
      ~{true="-meme-maxw" false="" meme_max_w} \
      ~{true="-meme-nmotifs" false="" meme_n_motifs} \
      ~{true="-meme-minsites" false="" meme_min_sites} \
      ~{true="-meme-maxsites" false="" meme_max_sites} \
      ~{true="-meme-p" false="" meme_p} \
      ~{true="-meme-pal" false="" meme_pal} \
      ~{true="-meme-searchsize" false="" meme_search_size} \
      ~{true="-meme-nrand" false="" meme_nr_and} \
      ~{true="-dreme-e" false="" dre_me_e} \
      ~{true="-dreme-m" false="" dre_me_m} \
      ~{true="-centrimo-local" false="" centri_mo_local} \
      ~{true="-centrimo-score" false="" centri_mo_score} \
      ~{true="-centrimo-maxreg" false="" centri_mo_max_reg} \
      ~{if defined(centri_mo_e_thresh) then ("-centrimo-ethresh " +  '"' + centri_mo_e_thresh + '"') else ""} \
      ~{true="-centrimo-noseq" false="" centri_mo_no_seq} \
      ~{true="-centrimo-flip" false="" centri_mo_flip} \
      ~{true="-spamo-skip" false="" spam_o_skip} \
      ~{true="-fimo-skip" false="" fimo_skip} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    b_file: "<path>  : background file"
    order: "<ord>   : set the order of the Markov background model that is generated from the sequences when a background file is not given; default: 1"
    seed: "<seed>  : seed for the randomized selection of sequences for MEME and the shuffling of sequences for DREME; default: seed randomly"
    c_cut: "<num>   : maximum size of a sequence before it is cut down  to a centered section; a value of 0 indicates the sequences should not be cut down; default: 100"
    group_thresh: "<gthr>  : primary threshold for clustering motifs; default: 0.05"
    group_weak: "<gwk>   : secondary threshold for clustering motifs; default: 2*gthr"
    filter_thresh: "<fthr>  : E-value threshold for including motifs; default: 0.05"
    time: "<minutes>  : maximum time that this program has to run and  create output in; default: no limit"
    desc: "<text>  : description of the job"
    f_desc: "<file>  : file containing plain text description of the job"
    norc: ": search given strand only"
    old_clustering: ": pick cluster seed motifs based only on significance; default: preferentially select discovered motifs as clustering seeds even if there is a library motif that appears more enriched"
    noecho: ": don't echo the commands run"
    version: ": print the version and exit"
    meme_brief: "<num>   : reduce size of MEME output files if more than <num>  : primary sequences"
    meme_mod: "[oops|zoops|anr]: sites used in a single sequence"
    meme_min_w: "<num>   : minimum motif width"
    meme_max_w: "<num>   : maximum motif width"
    meme_n_motifs: "<num>   : maximum number of motifs to find"
    meme_min_sites: "<num>   : minimum number of sites per motif"
    meme_max_sites: "<num>   : maximum number of sites per motif"
    meme_p: "<np>    : use parallel version with <np> processors"
    meme_pal: ": look for palindromes only"
    meme_search_size: "<num>   : the maximum portion of the primary sequences (in characters) : used for motif search; MEME's running time increases as  : roughly the square of <num>"
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
    db: ""
  }
}