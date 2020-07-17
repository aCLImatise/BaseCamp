version 1.0

task CompareProtsClusterHM.pl {
  input {
    Boolean? minimum_probability
    Boolean? minimum_percentage_samples
    Boolean? protein_window_size
    Boolean? np
    Boolean? nf
    Boolean? d_three
    String compare_prot_sdot_pl
    String writes
    String comparison
    String to
    String tab
    String delim
    File file
  }
  command <<<
    compareProts_ClusterHM.pl \
      ~{compare_prot_sdot_pl} \
      ~{writes} \
      ~{comparison} \
      ~{to} \
      ~{tab} \
      ~{delim} \
      ~{file} \
      ~{true="-p" false="" minimum_probability} \
      ~{true="-s" false="" minimum_percentage_samples} \
      ~{true="-w" false="" protein_window_size} \
      ~{true="-nP" false="" np} \
      ~{true="-nF" false="" nf} \
      ~{true="-D3" false="" d_three}
  >>>
  parameter_meta {
    minimum_probability: "<minimum probability>"
    minimum_percentage_samples: "<minimum percentage of samples containing each protein>"
    protein_window_size: "<protein window size>"
    np: "Disable Protein Clustering"
    nf: "Disable File Clustering"
    d_three: ""
    compare_prot_sdot_pl: ""
    writes: ""
    comparison: ""
    to: ""
    tab: ""
    delim: ""
    file: ""
  }
}