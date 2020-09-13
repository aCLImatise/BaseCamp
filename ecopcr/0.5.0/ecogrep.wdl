version 1.0

task Ecogrep {
  input {
    Boolean? compare_pattern_direct
    Boolean? compare_pattern_reverse
    Boolean? atabase_containing_information
    Boolean? rrors_max_error
    Boolean? attern_oligonucleotide_pattern
    Boolean? gnore_subtree_given
    Boolean? estrict_search_subtree
    Boolean? inert_sense_select
  }
  command <<<
    ecogrep \
      ~{if (compare_pattern_direct) then "-1" else ""} \
      ~{if (compare_pattern_reverse) then "-2" else ""} \
      ~{if (atabase_containing_information) then "-d" else ""} \
      ~{if (rrors_max_error) then "-e" else ""} \
      ~{if (attern_oligonucleotide_pattern) then "-p" else ""} \
      ~{if (gnore_subtree_given) then "-i" else ""} \
      ~{if (estrict_search_subtree) then "-r" else ""} \
      ~{if (inert_sense_select) then "-v" else ""}
  >>>
  parameter_meta {
    compare_pattern_direct: ": [FIRST] : compare the given pattern with direct strand oligonucleotide"
    compare_pattern_reverse: ": [SECOND] : compare the given pattern with reverse strand oligonucleotide"
    atabase_containing_information: ": [D]atabase containing taxonomic information"
    rrors_max_error: ": [E]rrors : max error allowed in pattern match (option-1, -2 and -p) (0 by default)"
    attern_oligonucleotide_pattern: ": [P]attern : oligonucleotide pattern"
    gnore_subtree_given: ": [I]gnore subtree under given taxonomic id"
    estrict_search_subtree: ": [R]estrict search to subtree under given taxomic id"
    inert_sense_select: ": in[V]ert the sense of matching, to select non-matching lines."
  }
  output {
    File out_stdout = stdout()
  }
}