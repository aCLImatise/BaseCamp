version 1.0

task Ibs {
  input {
    Boolean? glf
    File? out_filename
    Boolean? n_ind
    Boolean? in_done
    Boolean? ind_two
    Boolean? all_pairs
    Boolean? max_sites
    Boolean? model
    Boolean? seed
  }
  command <<<
    ibs \
      ~{if (glf) then "-glf" else ""} \
      ~{if defined(out_filename) then ("-outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (n_ind) then "-nInd" else ""} \
      ~{if (in_done) then "-ind1" else ""} \
      ~{if (ind_two) then "-ind2" else ""} \
      ~{if (all_pairs) then "-allpairs" else ""} \
      ~{if (max_sites) then "-maxSites" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (seed) then "-seed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/angsd:0.935--hd2e4403_0"
  }
  parameter_meta {
    glf: "input GLF filename:"
    out_filename: "filename(prefix):"
    n_ind: "nubmer of individuals in GLF file:"
    in_done: "/i1        individuals 1:"
    ind_two: "/i2        individuals 2:"
    all_pairs: "analyse all pairs:"
    max_sites: "maximum sites to analyze:"
    model: "ibs model\\nsingle:        0 all 10 genotypes, 1 HO/HE\\npair:          0 all 10 genotypes, 1 HO/HE, 2 ABCD"
    seed: "ibs -seed 0 use seed for random start"
  }
  output {
    File out_stdout = stdout()
  }
}