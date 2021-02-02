version 1.0

task Ecofind {
  input {
    Boolean? ll_enable_search
    Boolean? atabase_containing_match
    Boolean? ist_taxonomic_rank
    Boolean? ath_add_column
    Boolean? arents_specifiying_displays
    Boolean? given_taxonomic_rank
    Boolean? ons_specifiying_displays
  }
  command <<<
    ecofind \
      ~{if (ll_enable_search) then "-a" else ""} \
      ~{if (atabase_containing_match) then "-d" else ""} \
      ~{if (ist_taxonomic_rank) then "-l" else ""} \
      ~{if (ath_add_column) then "-P" else ""} \
      ~{if (arents_specifiying_displays) then "-p" else ""} \
      ~{if (given_taxonomic_rank) then "-r" else ""} \
      ~{if (ons_specifiying_displays) then "-s" else ""}
  >>>
  parameter_meta {
    ll_enable_search: ": [A]ll enable the search on all alternative names and not only scientific names."
    atabase_containing_match: ": [D]atabase containing the taxonomy.\\nTo match the expected format, the database\\nhas to be formated first by the ecoPCRFormat.py\\nprogram located in the tools directory.\\nWrite the database radical without any extension."
    ist_taxonomic_rank: ": [L]ist all taxonomic rank available for -r option"
    ath_add_column: ": [P]ath : add a column containing the full path for each displayed taxon"
    arents_specifiying_displays: ": [P]arents : specifiying this option displays all parental tree's information for the given taxid."
    given_taxonomic_rank: ": [R]estrict to given taxonomic rank"
    ons_specifiying_displays: ": [S]ons: specifiying this option displays all subtree's information for the given taxid."
  }
  output {
    File out_stdout = stdout()
  }
}