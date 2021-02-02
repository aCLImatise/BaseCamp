version 1.0

task MafSpeciesSubset {
  input {
    Boolean? keep_first
    String truth_dot
  }
  command <<<
    mafSpeciesSubset \
      ~{truth_dot} \
      ~{if (keep_first) then "-keepFirst" else ""}
  >>>
  parameter_meta {
    keep_first: "- If set, keep the first 'a' line in a maf no matter what\\nUseful for mafFrag results where we use this for the gene name\\n"
    truth_dot: "species.lst is a file with a list of species to keep"
  }
  output {
    File out_stdout = stdout()
  }
}