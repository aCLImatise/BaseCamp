version 1.0

task NwCondense {
  input {
    File? uses_group_map
    Boolean? unicifies_leaf_labels
  }
  command <<<
    nw_condense \
      ~{if defined(uses_group_map) then ("-m " +  '"' + uses_group_map + '"') else ""} \
      ~{if (unicifies_leaf_labels) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uses_group_map: ": uses a group map. This is a text file that lists one\\nlabel and one group name per line. For example a file with the\\nfollowing contents\\nHomo Africa\\nHylobates Asia\\nGorilla Africa\\nPan Africa\\nPongo Asia\\nmaps the generic names of some apes to their continent of origin.\\nThat is, it defines the groups 'Asia' and 'Africa'. Labels and group\\nnames are white-separated and should not contain spaces.\\nClades consisting entirely of leaves belonging to a single group\\nwill be replaced by a single leaf whose label has the following\\nstructure: <group name>_<sample>_<size>, where <sample> is the label\\nof one of the members of the clade, and <size> is the number of\\nmembers of the clade.\\nApplied to the Old world primates tree 'data/catarrhini', the above\\nmap would condense all African apes into a single leaf (since they\\nform a clade) with label 'Africa_Homo_3'. It would not be able to\\ncondense further, however, because Pongo belong to group 'Asia'."
    unicifies_leaf_labels: ": unicifies leaf labels by visiting the tree in Newick order and\\nremoving any leaf node whose label was already seen."
  }
  output {
    File out_stdout = stdout()
  }
}