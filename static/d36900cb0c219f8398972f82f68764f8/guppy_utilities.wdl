version 1.0

task GuppyUtilities {
  input {
    String visualization
    String heat
    String sing
    String tog
    String bary
    String ed_pl
    String error
    String fpd
    String kr
    String kr_heat
    String pc_a
    String rare_fact
    String split_if_y
    String squash
    String uni_frac
    String classification
    String classify_rdp
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
      ~{error} \
      ~{fpd} \
      ~{kr} \
      ~{kr_heat} \
      ~{pc_a} \
      ~{rare_fact} \
      ~{split_if_y} \
      ~{squash} \
      ~{uni_frac} \
      ~{classification} \
      ~{classify_rdp} \
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
      ~{rare_fy} \
      ~{red_up} \
      ~{round} \
      ~{to_csv} \
      ~{to_json} \
      ~{trim}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    visualization: "fat                     makes trees with edges fattened in proportion to the number of reads"
    heat: "maps an an arbitrary vector of the correct length to the tree"
    sing: "makes one tree for each query sequence, showing uncertainty"
    tog: "makes a tree with each of the reads represented as a pendant edge"
    bary: "draws the barycenter of a placement collection on the reference tree"
    ed_pl: "calculates the EDPL uncertainty values for a collection of pqueries"
    error: "finds the error between two placefiles"
    fpd: "calculates various alpha diversity metrics of placefiles"
    kr: "calculates the Kantorovich-Rubinstein distance and corresponding p-values"
    kr_heat: "makes a heat tree"
    pc_a: "performs edge principal components"
    rare_fact: "calculates phylogenetic rarefaction curves"
    split_if_y: "writes out differences of masses for the splits of the tree"
    squash: "performs squash clustering"
    uni_frac: "calculates unifrac on two or more placefiles"
    classification: "classify                outputs classification information in a tabular or SQLite format"
    classify_rdp: "converts RDP output to something resembling guppy classify output"
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
    o_graph: "finds the mass islands of one or more pqueries"
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