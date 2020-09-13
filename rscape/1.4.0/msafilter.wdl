version 1.0

task Msafilter {
  input {
    Directory? outdir
    Boolean? _be_verbose
    Int? window
    Int? slide
    Boolean? one_msa
    Float? filter_seqs_xseqcons
    Float? var_6
    Float? var_7
    Int? t_start
    Int? tend
    Boolean? consensus
    Int? sub_msa
    Int? n_seq_min
    Float? gap_thresh
    Float? mini_d
    Float? max_id
    String? in_format
    File? out_msa
    File? out_map
    Int? seed
    Boolean? options
    String msa_file
  }
  command <<<
    msafilter \
      ~{msa_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{if (one_msa) then "--onemsa" else ""} \
      ~{if defined(filter_seqs_xseqcons) then ("-F " +  '"' + filter_seqs_xseqcons + '"') else ""} \
      ~{if defined(var_6) then ("-I " +  '"' + var_6 + '"') else ""} \
      ~{if defined(var_7) then ("-i " +  '"' + var_7 + '"') else ""} \
      ~{if defined(t_start) then ("--tstart " +  '"' + t_start + '"') else ""} \
      ~{if defined(tend) then ("--tend " +  '"' + tend + '"') else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(sub_msa) then ("--submsa " +  '"' + sub_msa + '"') else ""} \
      ~{if defined(n_seq_min) then ("--nseqmin " +  '"' + n_seq_min + '"') else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(max_id) then ("--maxid " +  '"' + max_id + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_msa) then ("--outmsa " +  '"' + out_msa + '"') else ""} \
      ~{if defined(out_map) then ("--outmap " +  '"' + out_map + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    outdir: ": specify a directory for all output files"
    _be_verbose: ": be verbose"
    window: ": window size  (n>0)"
    slide: ": window slide  [50]  (n>0)"
    one_msa: ": if file has more than one msa, analyze only the first one"
    filter_seqs_xseqcons: ": filter out seqs <x*seq_cons residues  (0<x<=1.0)"
    var_6: ": require seqs to have < <x> id  [1.0]  (0<x<=1.0)"
    var_7: ": require seqs to have >= <x> id  (0<=x<1.0)"
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
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}