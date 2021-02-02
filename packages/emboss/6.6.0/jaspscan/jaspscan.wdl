version 1.0

task Jaspscan {
  input {
    Boolean? menu
    Boolean? matrices
    Boolean? threshold
    Boolean? exclude
    Boolean? both
  }
  command <<<
    jaspscan \
      ~{if (menu) then "-menu" else ""} \
      ~{if (matrices) then "-matrices" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (both) then "-both" else ""}
  >>>
  parameter_meta {
    menu: "menu       [C] Matrix set (Values: C (Core); F (Fam); P\\n(Phylofacts); N (CNE); O (POLII); S\\n(SPLICE); B (PBM); L (PBM_HLH); H\\n(PBM_HOMEO))"
    matrices: "string     [all] The name 'all' reads in all matrix\\nfiles from the selected\\nJASPAR matrix set. You can specify\\nindividual matrices by giving\\ntheir names with commas between then, such\\nas:\\n'ma0001.1,ma0015*'.\\nThe case of the names is not important. You\\ncan specify a file of\\nmatrix names to read in by giving the name\\nof the file holding the\\nmatrix names with a '@' character in front\\nof it, for example,\\n'@matrix.list'.\\nBlank lines and lines starting with a hash\\ncharacter or '!' are ignored and all other\\nlines are concatenated together with a comma\\ncharacter ',' and then treated as the list\\nof enzymes to search\\nfor.\\nAn example of a file of matrix names is:\\n! my matrices\\nma0001.1, ma0002.1\\n! other matrices\\nma0010.1\\nma0032*\\nma0053.1 (Any string)"
    threshold: "float      [80.0] If the matrix score is greater than\\nor equal to this percentage\\nthen a hit will be reported (Any numeric\\nvalue)"
    exclude: "string     The names of any matrices to exclude from\\nthe 'matrices'\\nlist. Matrices are specified in the same way\\nas for the\\nselection list. (Any string)"
    both: "boolean    [N] If set then both the forward and reverse\\nstrands are searched"
  }
  output {
    File out_stdout = stdout()
  }
}