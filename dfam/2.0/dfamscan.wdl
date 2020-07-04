version 1.0

task Dfamscan.pl {
  input {
    String? df_am_in_file
    String? df_am_outfile
    Boolean? annotation_thresh_slash_cut_tc
    String? species
    Boolean? sort_by_seq
    String? min_cov_frac
  }
  command <<<
    dfamscan.pl \
      ~{if defined(df_am_in_file) then ("--dfam_infile " +  '"' + df_am_in_file + '"') else ""} \
      ~{if defined(df_am_outfile) then ("--dfam_outfile " +  '"' + df_am_outfile + '"') else ""} \
      ~{true="--annotation_thresh/--cut_tc" false="" annotation_thresh_slash_cut_tc} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--sortby_seq" false="" sort_by_seq} \
      ~{if defined(min_cov_frac) then ("--min_cov_frac " +  '"' + min_cov_frac + '"') else ""}
  >>>
  parameter_meta {
    df_am_in_file: "Use this is you've already run nhmmscan, and just want to perfom dfamscan filtering/sorting. The file must be the one produced by nhmmscan's --dfamtblout flag. (Note: must be nhmmscan output, not nhmmer output)"
    df_am_outfile: "Output file, also in dfamtblout format"
    annotation_thresh_slash_cut_tc: "Default"
    species: "Currently allowed are \"Other\", \"Homo sapiens\",  \"Mus Musculus\", \"Danio rerio\", \"Drosophila melanogaster\", or \"Caenorhabditis elegans\""
    sort_by_seq: "Default"
    min_cov_frac: "This is similar to the MaskLevel concept in  crossmatch.  A match is considered non-redundant if at least (100-min_cov_frac)% of it's aligned bases are not contained within the domain of any higher-scoring hit. Default: 0.75"
  }
}