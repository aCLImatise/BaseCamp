version 1.0

task Appcov {
  input {
    String? outdir
    Boolean? _be_verbose
    String? window
    String? slide
    Boolean? one_msa
    Boolean? plot_wc
    Boolean? helix
    String? app_gap
    String? app_var
    String? a_ppv_art
    String? app_now_c
    String? app_gu
    String? app_not_s
    String? min_helix
    String? filter_seqs_xseqcons
    String? _require_seqs_x_i_d_
    String? require_seqs_x_i_d__x
    String? t_start
    String? tend
    Boolean? consensus
    String? sub_msa
    String? n_seq_min
    String? gap_thresh
    String? mini_d
    String? max_id
    String? in_format
    Boolean? _produce_plots
    String? out_pair
    String? out_msa
    String? out_map
    String? seed
    Boolean? options
    String apparent
    String co_variations
    String msa_file
  }
  command <<<
    appcov \
      ~{apparent} \
      ~{co_variations} \
      ~{msa_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{true="--onemsa" false="" one_msa} \
      ~{true="--plotwc" false="" plot_wc} \
      ~{true="--helix" false="" helix} \
      ~{if defined(app_gap) then ("--appgap " +  '"' + app_gap + '"') else ""} \
      ~{if defined(app_var) then ("--appvar " +  '"' + app_var + '"') else ""} \
      ~{if defined(a_ppv_art) then ("--appvart " +  '"' + a_ppv_art + '"') else ""} \
      ~{if defined(app_now_c) then ("--appnowc " +  '"' + app_now_c + '"') else ""} \
      ~{if defined(app_gu) then ("--appgu " +  '"' + app_gu + '"') else ""} \
      ~{if defined(app_not_s) then ("--appnots " +  '"' + app_not_s + '"') else ""} \
      ~{if defined(min_helix) then ("--minhelix " +  '"' + min_helix + '"') else ""} \
      ~{if defined(filter_seqs_xseqcons) then ("-F " +  '"' + filter_seqs_xseqcons + '"') else ""} \
      ~{if defined(_require_seqs_x_i_d_) then ("-I " +  '"' + _require_seqs_x_i_d_ + '"') else ""} \
      ~{if defined(require_seqs_x_i_d__x) then ("-i " +  '"' + require_seqs_x_i_d__x + '"') else ""} \
      ~{if defined(t_start) then ("--tstart " +  '"' + t_start + '"') else ""} \
      ~{if defined(tend) then ("--tend " +  '"' + tend + '"') else ""} \
      ~{true="--consensus" false="" consensus} \
      ~{if defined(sub_msa) then ("--submsa " +  '"' + sub_msa + '"') else ""} \
      ~{if defined(n_seq_min) then ("--nseqmin " +  '"' + n_seq_min + '"') else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(max_id) then ("--maxid " +  '"' + max_id + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="-p" false="" _produce_plots} \
      ~{if defined(out_pair) then ("--outpair " +  '"' + out_pair + '"') else ""} \
      ~{if defined(out_msa) then ("--outmsa " +  '"' + out_msa + '"') else ""} \
      ~{if defined(out_map) then ("--outmap " +  '"' + out_map + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    outdir: ": specify a directory for all output files"
    _be_verbose: ": be verbose"
    window: ": window size  (n>0)"
    slide: ": window slide  [50]  (n>0)"
    one_msa: ": if file has more than one msa, analyze only the first one"
    plot_wc: ": plot all possible wc+G:U basepairs"
    helix: ": find helices"
    app_gap: ": max fraction of gaps per column  [0.1]  (0<=x<=1)"
    app_var: ": minimum fraction of changes per column required  [0.01]  (0<=x<=1)"
    a_ppv_art: ": minimum fraction of changes per pair required  [0.01]  (0<=x<=1)"
    app_now_c: ": max fraction of non-WC allowed  [0.01]  (0<=x<=1)"
    app_gu: ": fraction of GU's allowed [default: allows all]  [1.0]  (0<=x<=1)"
    app_not_s: ": fraction of not transitions to still call a pair ts [default: allows non]  [0.0]  (0<=x<=1)"
    min_helix: ": min lenght of a helix [default: 4]  [3]  (n>0)"
    filter_seqs_xseqcons: ": filter out seqs <x*seq_cons residues  (0<x<=1.0)"
    _require_seqs_x_i_d_: ": require seqs to have < <x> id  [1.0]  (0<x<=1.0)"
    require_seqs_x_i_d__x: ": require seqs to have >= <x> id  (0<=x<1.0)"
    t_start: ": min alignment position to analyze [1..alen]  (n>0)"
    tend: ": max alignment position to analyze [1..alen]  (n>0)"
    consensus: ": analyze only consensus (seq_cons) positions"
    sub_msa: ": take n random sequences from the alignment, all if NULL  (n>0)"
    n_seq_min: ": minimum number of sequences in the alignment  (n>0)"
    gap_thresh: ": keep columns with < <x> fraction of gaps  [1.0]  (0<=x<=1)"
    mini_d: ": minimum avgid of the given alignment  (0<x<=1.0)"
    max_id: ": maximum avgid of the given alignment  (0<x<=1.0)"
    in_format: ": specify format"
    _produce_plots: ": produce plots"
    out_pair: ": write pairs to <f> (default is standar output)"
    out_msa: ": write msa used to file <f>,"
    out_map: ": write map file to <f>"
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    options: ""
    apparent: ""
    co_variations: ""
    msa_file: ""
  }
}