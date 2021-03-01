version 1.0

task GuppyUtilities {
  input {
    String visualization
    String heat
    String sing
    String tog
    String bary
    String ed_pl
    String epca
    String error
    String fpd
    String indep_c
    String kr
    String kr_heat
    String lpc_a
    String mcl
    String pm_lpc_a
    String rare_fact
    String split_if_y
    String squash
    String uni_frac
    String classification
    String to_rdp
    String utilities
    String check
    String compress
    String de_multi
    String dist_mat
    String filter
    String info
    String islands
    String merge
    String mft
    String o_graph
    String placemat
    String rare_fy
    String red_up
    String round
    String to_csv
    String to_json
    String trim
  }
  command <<<
    guppy utilities \
      ~{visualization} \
      ~{heat} \
      ~{sing} \
      ~{tog} \
      ~{bary} \
      ~{ed_pl} \
      ~{epca} \
      ~{error} \
      ~{fpd} \
      ~{indep_c} \
      ~{kr} \
      ~{kr_heat} \
      ~{lpc_a} \
      ~{mcl} \
      ~{pm_lpc_a} \
      ~{rare_fact} \
      ~{split_if_y} \
      ~{squash} \
      ~{uni_frac} \
      ~{classification} \
      ~{to_rdp} \
      ~{utilities} \
      ~{check} \
      ~{compress} \
      ~{de_multi} \
      ~{dist_mat} \
      ~{filter} \
      ~{info} \
      ~{islands} \
      ~{merge} \
      ~{mft} \
      ~{o_graph} \
      ~{placemat} \
      ~{rare_fy} \
      ~{red_up} \
      ~{round} \
      ~{to_csv} \
      ~{to_json} \
      ~{trim}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    visualization: "fat                     makes trees with edges fattened in proportion to the number of reads"
    heat: "maps an an arbitrary vector of the correct length to the tree"
    sing: "makes one tree for each query sequence, showing uncertainty"
    tog: "makes a tree with each of the reads represented as a pendant edge"
    bary: "draws the barycenter of a placement collection on the reference tree"
    ed_pl: "calculates the EDPL uncertainty values for a collection of pqueries"
    epca: "performs edge principal components"
    error: "finds the error between two placefiles"
    fpd: "calculates various alpha diversity metrics of placefiles"
    indep_c: "calculates the independent contrasts of pqueries"
    kr: "calculates the Kantorovich-Rubinstein distance and corresponding p-values"
    kr_heat: "makes a heat tree"
    lpc_a: "performs length principal components"
    mcl: "cluster pqueries using Markov clustering via MCL"
    pm_lpc_a: "performs poor-man's length principal components"
    rare_fact: "calculates phylogenetic rarefaction curves"
    split_if_y: "writes out differences of masses for the splits of the tree"
    squash: "performs squash clustering"
    uni_frac: "calculates unifrac on two or more placefiles"
    classification: "classify                outputs classification information in SQLite format"
    to_rdp: "convert a reference package to a format RDP wants"
    utilities: "adcl                    calculates ADCL for each pquery in a placefile"
    check: "checks placefiles for common problems"
    compress: "compresses a placefile's pqueries"
    de_multi: "splits apart placements with multiplicity, undoing a round procedure"
    dist_mat: "prints out a pairwise distance matrix between the edges"
    filter: "filters one or more placefiles by placement name"
    info: "writes the number of leaves of the reference tree and the number of pqueries"
    islands: "finds the mass islands of one or more pqueries"
    merge: "merges placefiles together"
    mft: "Multi-Filter and Transform placefiles"
    o_graph: "finds the overlap graph of one or more pqueries"
    placemat: "prints out a pairwise distance matrix between placements"
    rare_fy: "performs rarefaction on collections of placements"
    red_up: "restores duplicates to deduped placefiles"
    round: "clusters the placements by rounding branch lengths"
    to_csv: "turns a placefile into a csv file"
    to_json: "converts old-style .place files to .jplace placement files"
    trim: "trims placefiles down to only containing an informative subset of the mass"
  }
  output {
    File out_stdout = stdout()
  }
}