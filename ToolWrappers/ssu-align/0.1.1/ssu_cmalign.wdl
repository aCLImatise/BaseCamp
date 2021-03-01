version 1.0

task Ssucmalign {
  input {
    File? output_alignment_file
    Boolean? align_locally_model
    Boolean? quiet_suppress_banner
    String? metacm_mode_cmfile
    Boolean? i_leaved
    Boolean? no_prob
    File? in_format
    Int? chunk
    Boolean? devhelp
    Boolean? opt_acc
    Boolean? cy_k
    Boolean? sample
    Int? wsample_set_seed
    Boolean? viterbi
    Boolean? sub
    Boolean? small
    Boolean? h_banded
    Boolean? non_banded
    Float? tau
    Int? mx_size
    Boolean? rna
    Boolean? dna
    Boolean? match_only
    File? with_ali
    Boolean? with_p_knots
    Boolean? rf
    Float? gap_thresh
    Int? cm_idx
    File? cm_name
    File? t_file
    File? i_file
    File? el_file
    File? s_file
    Boolean? options
    String cm_file
    File sequence_file
  }
  command <<<
    ssu_cmalign \
      ~{cm_file} \
      ~{sequence_file} \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{if (align_locally_model) then "-l" else ""} \
      ~{if (quiet_suppress_banner) then "-q" else ""} \
      ~{if defined(metacm_mode_cmfile) then ("-M " +  '"' + metacm_mode_cmfile + '"') else ""} \
      ~{if (i_leaved) then "--ileaved" else ""} \
      ~{if (no_prob) then "--no-prob" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if (opt_acc) then "--optacc" else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if defined(wsample_set_seed) then ("-s " +  '"' + wsample_set_seed + '"') else ""} \
      ~{if (viterbi) then "--viterbi" else ""} \
      ~{if (sub) then "--sub" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if (h_banded) then "--hbanded" else ""} \
      ~{if (non_banded) then "--nonbanded" else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (match_only) then "--matchonly" else ""} \
      ~{if defined(with_ali) then ("--withali " +  '"' + with_ali + '"') else ""} \
      ~{if (with_p_knots) then "--withpknots" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(cm_idx) then ("--cm-idx " +  '"' + cm_idx + '"') else ""} \
      ~{if defined(cm_name) then ("--cm-name " +  '"' + cm_name + '"') else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(el_file) then ("--elfile " +  '"' + el_file + '"') else ""} \
      ~{if defined(s_file) then ("--sfile " +  '"' + s_file + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_alignment_file: ": output the alignment to file <f>, not stdout"
    align_locally_model: ": align locally w.r.t. the model"
    quiet_suppress_banner: ": quiet; suppress banner and scores, print only the alignment"
    metacm_mode_cmfile: ": meta-cm mode: <cmfile> is a meta-cm built from aln in <f>"
    i_leaved: ": output alnment in interleaved Stockholm format (not 1 line/seq)"
    no_prob: ": do not append posterior probabilities to alignment"
    in_format: ": specify the input file is in format <x>, not FASTA"
    chunk: ": num seqs for each temp alnment, for saving memory  [1000]"
    devhelp: ": show list of undocumented developer options"
    opt_acc: ": align with the Holmes/Durbin optimal accuracy algorithm"
    cy_k: ": align with the CYK algorithm"
    sample: ": sample alignment of each seq from posterior distribution"
    wsample_set_seed: ": w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)"
    viterbi: ": align to a CM Plan 9 HMM with the Viterbi algorithm"
    sub: ": build sub CM for columns b/t HMM predicted start/end points"
    small: ": use divide and conquer (d&c) alignment algorithm"
    h_banded: ": accelerate using CM plan 9 HMM derived bands  [default]"
    non_banded: ": do not use bands to accelerate aln algorithm"
    tau: ": set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)"
    mx_size: ": set maximum allowable DP matrix size to <x> Mb  [2048.0]  (x>0.)"
    rna: ": output alignment as RNA sequence data"
    dna: ": output alignment as DNA (not RNA) sequence data"
    match_only: ": include only match columns in output alignment"
    with_ali: ": incl. alignment in <f> (must be aln <cm file> was built from)"
    with_p_knots: ": incl. structure (w/pknots) from <f> from --withali <f>"
    rf: ": --rf was originally used with cmbuild"
    gap_thresh: ": --gapthresh <x> was originally used with cmbuild  [0.5]"
    cm_idx: ": only align seqs with CM number <n>    in the CM file  (n>0)"
    cm_name: ": only align seqs with the CM named <s> in the CM file"
    t_file: ": dump individual sequence parsetrees to file <f>"
    i_file: ": dump information on per-sequence inserts to file <f>"
    el_file: ": dump information on per-sequence EL inserts to file <f>"
    s_file: ": dump alignment score information to file <f>"
    options: ""
    cm_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_alignment_file = "${in_output_alignment_file}"
  }
}