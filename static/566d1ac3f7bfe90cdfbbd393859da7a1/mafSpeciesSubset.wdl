version 1.0

task MafSpeciesSubset {
  input {
    Boolean? keep_first
    String in_dot_maf
    String species_dot_lst
    String out_dot_maf
  }
  command <<<
    mafSpeciesSubset \
      ~{in_dot_maf} \
      ~{species_dot_lst} \
      ~{out_dot_maf} \
      ~{true="-keepFirst" false="" keep_first}
  >>>
  parameter_meta {
    keep_first: "- If set, keep the first 'a' line in a maf no matter what Useful for mafFrag results where we use this for the gene name"
    in_dot_maf: ""
    species_dot_lst: ""
    out_dot_maf: ""
  }
}