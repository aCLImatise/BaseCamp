version 1.0

task Ibs {
  input {
    Boolean? glf_slash_f
    File? out_filename_slash_o
    Boolean? ninds_lash_n
    Boolean? in_done_slash_i_one
    Boolean? ind_two_slash_i_two
    Boolean? all_pairs_slash_a
    Boolean? max_sites_slash_m
    Boolean? model
    Boolean? seed
  }
  command <<<
    ibs \
      ~{if (glf_slash_f) then "-glf/-f" else ""} \
      ~{if defined(out_filename_slash_o) then ("-outFileName/-o " +  '"' + out_filename_slash_o + '"') else ""} \
      ~{if (ninds_lash_n) then "-nInd/-n" else ""} \
      ~{if (in_done_slash_i_one) then "-ind1/i1" else ""} \
      ~{if (ind_two_slash_i_two) then "-ind2/i2" else ""} \
      ~{if (all_pairs_slash_a) then "-allpairs/-a" else ""} \
      ~{if (max_sites_slash_m) then "-maxSites/-m" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (seed) then "-seed" else ""}
  >>>
  parameter_meta {
    glf_slash_f: "input GLF filename:"
    out_filename_slash_o: "filename(prefix):"
    ninds_lash_n: "nubmer of individuals in GLF file:"
    in_done_slash_i_one: "individuals 1:"
    ind_two_slash_i_two: "individuals 2:"
    all_pairs_slash_a: "analyse all pairs:"
    max_sites_slash_m: "maximum sites to analyze:"
    model: "ibs model\\nsingle:        0 all 10 genotypes, 1 HO/HE\\npair:          0 all 10 genotypes, 1 HO/HE, 2 ABCD"
    seed: "ibs -seed 0 use seed for random start"
  }
  output {
    File out_stdout = stdout()
  }
}