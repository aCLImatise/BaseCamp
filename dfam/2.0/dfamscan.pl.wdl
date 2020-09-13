version 1.0

task Dfamscanpl {
  input {
    File? df_am_in_file
    String? fast_a_file
    String? hmm_file
    Int? e
    String? t
    Boolean? masking_thresh_slash_cut_ga
    Boolean? annotation_thresh_slash_cut_tc
    String? species
    Boolean? sort_by_eval
    Boolean? sort_by_model
    Boolean? sort_by_seq
    String? min_cov_frac
    String? trf_outfile
    Int? cpu
    Boolean? no_rph_removal
    String? log_file
    String requires
    String crossmatch_dot
    Float zero_dot_seven_five
  }
  command <<<
    dfamscan_pl \
      ~{requires} \
      ~{crossmatch_dot} \
      ~{zero_dot_seven_five} \
      ~{if defined(df_am_in_file) then ("--dfam_infile " +  '"' + df_am_in_file + '"') else ""} \
      ~{if defined(fast_a_file) then ("--fastafile " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(hmm_file) then ("--hmmfile " +  '"' + hmm_file + '"') else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""} \
      ~{if (masking_thresh_slash_cut_ga) then "--masking_thresh/--cut_ga" else ""} \
      ~{if (annotation_thresh_slash_cut_tc) then "--annotation_thresh/--cut_tc" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (sort_by_eval) then "--sortby_eval" else ""} \
      ~{if (sort_by_model) then "--sortby_model" else ""} \
      ~{if (sort_by_seq) then "--sortby_seq" else ""} \
      ~{if defined(min_cov_frac) then ("--min_cov_frac " +  '"' + min_cov_frac + '"') else ""} \
      ~{if defined(trf_outfile) then ("--trf_outfile " +  '"' + trf_outfile + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (no_rph_removal) then "--no_rph_removal" else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    df_am_in_file: "Use this is you've already run nhmmscan, and\\njust want to perfom dfamscan filtering/sorting.\\nThe file must be the one produced by nhmmscan's\\n--dfamtblout flag.\\n(Note: must be nhmmscan output, not nhmmer output)"
    fast_a_file: "Use these if you want dfamscan to control a"
    hmm_file: "run of nhmmscan, then do filtering/sorting"
    e: ">0, <=10000"
    t: ""
    masking_thresh_slash_cut_ga: ""
    annotation_thresh_slash_cut_tc: "Default"
    species: "Currently allowed are \\\"Other\\\", \\\"Homo sapiens\\\",\\n\\\"Mus Musculus\\\", \\\"Danio rerio\\\", \\\"Drosophila melanogaster\\\",\\nor \\\"Caenorhabditis elegans\\\""
    sort_by_eval: ""
    sort_by_model: ""
    sort_by_seq: "Default"
    min_cov_frac: "This is similar to the MaskLevel concept in"
    trf_outfile: "Runs trf, put results in <s>; only with --fastafile"
    cpu: "Default 8"
    no_rph_removal: "Don't remove redundant profile hits"
    log_file: ""
    requires: "--dfam_outfile <s>   Output file, also in dfamtblout format"
    crossmatch_dot: "A match is considered non-redundant"
    zero_dot_seven_five: "All optional"
  }
  output {
    File out_stdout = stdout()
    File out_df_am_in_file = "${in_df_am_in_file}"
  }
}