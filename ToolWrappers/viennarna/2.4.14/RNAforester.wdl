version 1.0

task RNAforester {
  input {
    File? read_input_file
    Boolean? score
    Boolean? no_scale
    Boolean? tables
    Boolean? backtrace
    Boolean? calculate_alignment_top
    Boolean? calculate_distance_similarity
    Boolean? calculate_relative_score
    Boolean? local_similarity
    Int? so
    Boolean? smallinlarge_similarity
    Boolean? anchor
    Boolean? affine_gap_scoring
    Boolean? multiple_alignment_mode
    Boolean? ribo_sum
    String? cbm_in
    String? cm_in
    String? mt
    String? mc
    Boolean? predict_structures_sequences
    String? pm_in
    File? sp
    File? ps
    Int? pm
    Int? pd
    Int? pdo
    Int? bm
    Int? br
    Int? bd
    Int? b_do
    Boolean? two_d
    Boolean? two_d_hide_base_num
    Int? two_d_base_num_interval
    Boolean? two_d_grey
    Int? two_d_scale
    Boolean? two_d_fig
    Boolean? fast_a
  }
  command <<<
    RNAforester \
      ~{if defined(read_input_file) then ("-f " +  '"' + read_input_file + '"') else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (tables) then "--tables" else ""} \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (calculate_alignment_top) then "-t" else ""} \
      ~{if (calculate_distance_similarity) then "-d" else ""} \
      ~{if (calculate_relative_score) then "-r" else ""} \
      ~{if (local_similarity) then "-l" else ""} \
      ~{if defined(so) then ("-so " +  '"' + so + '"') else ""} \
      ~{if (smallinlarge_similarity) then "-s" else ""} \
      ~{if (anchor) then "--anchor" else ""} \
      ~{if (affine_gap_scoring) then "-a" else ""} \
      ~{if (multiple_alignment_mode) then "-m" else ""} \
      ~{if (ribo_sum) then "--RIBOSUM" else ""} \
      ~{if defined(cbm_in) then ("-cbmin " +  '"' + cbm_in + '"') else ""} \
      ~{if defined(cm_in) then ("-cmin " +  '"' + cm_in + '"') else ""} \
      ~{if defined(mt) then ("-mt " +  '"' + mt + '"') else ""} \
      ~{if defined(mc) then ("-mc " +  '"' + mc + '"') else ""} \
      ~{if (predict_structures_sequences) then "-p" else ""} \
      ~{if defined(pm_in) then ("-pmin " +  '"' + pm_in + '"') else ""} \
      ~{if defined(sp) then ("-sp " +  '"' + sp + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if defined(pm) then ("-pm " +  '"' + pm + '"') else ""} \
      ~{if defined(pd) then ("-pd " +  '"' + pd + '"') else ""} \
      ~{if defined(pdo) then ("-pdo " +  '"' + pdo + '"') else ""} \
      ~{if defined(bm) then ("-bm " +  '"' + bm + '"') else ""} \
      ~{if defined(br) then ("-br " +  '"' + br + '"') else ""} \
      ~{if defined(bd) then ("-bd " +  '"' + bd + '"') else ""} \
      ~{if defined(b_do) then ("-bdo " +  '"' + b_do + '"') else ""} \
      ~{if (two_d) then "-2d" else ""} \
      ~{if (two_d_hide_base_num) then "--2d_hidebasenum" else ""} \
      ~{if defined(two_d_base_num_interval) then ("--2d_basenuminterval " +  '"' + two_d_base_num_interval + '"') else ""} \
      ~{if (two_d_grey) then "--2d_grey" else ""} \
      ~{if defined(two_d_scale) then ("--2d_scale " +  '"' + two_d_scale + '"') else ""} \
      ~{if (two_d_fig) then "--2d_fig" else ""} \
      ~{if (fast_a) then "--fasta" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_input_file: "read input from file"
    score: "compute only scores, no alignment"
    no_scale: "suppress output of scale"
    tables: "shows dynamic programming tables"
    backtrace: "shows backtrace call table cells"
    calculate_alignment_top: "calculate alignment top down instead of bottom up"
    calculate_distance_similarity: "calculate distance instead of similarity"
    calculate_relative_score: "calculate relative score"
    local_similarity: "local similarity"
    so: "local suboptimal alignments within int%"
    smallinlarge_similarity: "small-in-large similarity"
    anchor: "use shape anchoring for speedup"
    affine_gap_scoring: "affine gap scoring"
    multiple_alignment_mode: "multiple alignment mode"
    ribo_sum: "RIBOSUM85-60 scoring matrix (base-pair substitutions)"
    cbm_in: "minimum base frequency for consensus structure"
    cm_in: "minimum basepair frequency for consensus structure"
    mt: "clustering threshold"
    mc: "clustering cutoff"
    predict_structures_sequences: "predict structures from sequences"
    pm_in: "minimum basepair frequency for prediction"
    sp: "save profile"
    ps: "profile search"
    pm: "basepair(bond) match score"
    pd: "basepair bond indel score"
    pdo: "basepair bond indel open score"
    bm: "base match score"
    br: "base mismatch score"
    bd: "base indel score"
    b_do: "base indel open score"
    two_d: "generate alignment 2D plots in postscript format"
    two_d_hide_base_num: "hide base numbers in 2D plot"
    two_d_base_num_interval: "show every n-th base number"
    two_d_grey: "use only grey colors in 2D plots"
    two_d_scale: "scale factor for the 2d plots"
    two_d_fig: "generate additional fig file of 2d plot"
    fast_a: "generate fasta output of alignments"
  }
  output {
    File out_stdout = stdout()
  }
}