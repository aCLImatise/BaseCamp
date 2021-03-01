version 1.0

task Dfamscanpl {
  input {
    File? df_am_in_file
    String? fast_a_file
    String? hmm_file
    String? annotation_thresh
    String? species
    Boolean? sort_by_model
    String? min_cov_frac
    String? trf_outfile
    Int? cpu
    Boolean? no_rph_removal
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
      ~{if defined(annotation_thresh) then ("--annotation_thresh " +  '"' + annotation_thresh + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (sort_by_model) then "--sortby_model" else ""} \
      ~{if defined(min_cov_frac) then ("--min_cov_frac " +  '"' + min_cov_frac + '"') else ""} \
      ~{if defined(trf_outfile) then ("--trf_outfile " +  '"' + trf_outfile + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (no_rph_removal) then "--no_rph_removal" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    df_am_in_file: "Use this is you've already run nhmmscan, and\\njust want to perfom dfamscan filtering/sorting.\\nThe file must be the one produced by nhmmscan's\\n--dfamtblout flag.\\n(Note: must be nhmmscan output, not nhmmer output)"
    fast_a_file: "Use these if you want dfamscan to control a"
    hmm_file: "run of nhmmscan, then do filtering/sorting"
    annotation_thresh: "Default"
    species: "Currently allowed are \\\"Other\\\", \\\"Homo sapiens\\\",\\n\\\"Mus Musculus\\\", \\\"Danio rerio\\\", \\\"Drosophila melanogaster\\\",\\nor \\\"Caenorhabditis elegans\\\""
    sort_by_model: "Default"
    min_cov_frac: "This is similar to the MaskLevel concept in"
    trf_outfile: "Runs trf, put results in <s>; only with --fastafile"
    cpu: "Default 8"
    no_rph_removal: "Don't remove redundant profile hits"
    requires: "--dfam_outfile <s>   Output file, also in dfamtblout format"
    crossmatch_dot: "A match is considered non-redundant"
    zero_dot_seven_five: "All optional"
  }
  output {
    File out_stdout = stdout()
    File out_df_am_in_file = "${in_df_am_in_file}"
  }
}