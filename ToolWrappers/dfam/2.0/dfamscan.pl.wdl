version 1.0

task Dfamscanpl {
  input {
    File? df_am_in_file
    String? fast_a_file
    String? hmm_file
    Int? t_fmaskingthreshcutgaannotationthreshcuttc_defaultspecies
    Boolean? sort_by_eval
    String? min_cov_frac
    Int? trf_outfile
    String requires
    String crossmatch_dot
  }
  command <<<
    dfamscan_pl \
      ~{requires} \
      ~{crossmatch_dot} \
      ~{if defined(df_am_in_file) then ("--dfam_infile " +  '"' + df_am_in_file + '"') else ""} \
      ~{if defined(fast_a_file) then ("--fastafile " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(hmm_file) then ("--hmmfile " +  '"' + hmm_file + '"') else ""} \
      ~{if defined(t_fmaskingthreshcutgaannotationthreshcuttc_defaultspecies) then ("-E " +  '"' + t_fmaskingthreshcutgaannotationthreshcuttc_defaultspecies + '"') else ""} \
      ~{if (sort_by_eval) then "--sortby_eval" else ""} \
      ~{if defined(min_cov_frac) then ("--min_cov_frac " +  '"' + min_cov_frac + '"') else ""} \
      ~{if defined(trf_outfile) then ("--trf_outfile " +  '"' + trf_outfile + '"') else ""}
  >>>
  parameter_meta {
    df_am_in_file: "Use this is you've already run nhmmscan, and\\njust want to perfom dfamscan filtering/sorting.\\nThe file must be the one produced by nhmmscan's\\n--dfamtblout flag.\\n(Note: must be nhmmscan output, not nhmmer output)"
    fast_a_file: "Use these if you want dfamscan to control a"
    hmm_file: "run of nhmmscan, then do filtering/sorting"
    t_fmaskingthreshcutgaannotationthreshcuttc_defaultspecies: ">0, <=10000\\n-T <f>\\n--masking_thresh/--cut_ga\\n--annotation_thresh/--cut_tc  Default\\n--species <i>        Currently allowed are \\\"Other\\\", \\\"Homo sapiens\\\",\\n\\\"Mus Musculus\\\", \\\"Danio rerio\\\", \\\"Drosophila melanogaster\\\",\\nor \\\"Caenorhabditis elegans\\\""
    sort_by_eval: "--sortby_model\\n--sortby_seq         Default"
    min_cov_frac: "This is similar to the MaskLevel concept in"
    trf_outfile: "Runs trf, put results in <s>; only with --fastafile\\n--cpu <i>            Default 8\\n--no_rph_removal     Don't remove redundant profile hits\\n--log_file <s>\\n"
    requires: "--dfam_outfile <s>   Output file, also in dfamtblout format"
    crossmatch_dot: "A match is considered non-redundant"
  }
  output {
    File out_stdout = stdout()
    File out_df_am_in_file = "${in_df_am_in_file}"
  }
}