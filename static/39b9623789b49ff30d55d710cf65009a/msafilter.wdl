version 1.0

task Msafilter {
  input {
    String? outdir
    Boolean? _be_verbose
    String? window
    String? slide
    Boolean? one_msa
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
    String? out_msa
    String? out_map
    String? seed
    Boolean? options
    String msa_file
  }
  command <<<
    msafilter \
      ~{msa_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{true="--onemsa" false="" one_msa} \
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
    out_msa: ": write msa used to file <f>,"
    out_map: ": write map file to <f>"
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    options: ""
    msa_file: ""
  }
}