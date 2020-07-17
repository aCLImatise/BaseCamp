version 1.0

task Subsetdb {
  input {
    Boolean? str__strings_match
    Boolean? str_strings_match_note
    Boolean? default_n_option
    Boolean? str_new_subset
    Boolean? put_subset_database
    Boolean? use_casesensitive_default
    Boolean? reverse_output_database
    Boolean? num_pull_sequences
    Boolean? num_create_files
    Boolean? str_when_reversing
    Boolean? print_database_statistics
    Boolean? export_protein_accession
    Boolean? verbose_reporting
    Boolean? cleaveremove_nterm_methionine
    String fast_a_dot_database
  }
  command <<<
    subsetdb \
      ~{fast_a_dot_database} \
      ~{true="-M" false="" str__strings_match} \
      ~{true="-N" false="" str_strings_match_note} \
      ~{true="-e" false="" default_n_option} \
      ~{true="-O" false="" str_new_subset} \
      ~{true="-P" false="" put_subset_database} \
      ~{true="-C" false="" use_casesensitive_default} \
      ~{true="-R" false="" reverse_output_database} \
      ~{true="-r" false="" num_pull_sequences} \
      ~{true="-s" false="" num_create_files} \
      ~{true="-D" false="" str_when_reversing} \
      ~{true="-S" false="" print_database_statistics} \
      ~{true="-L" false="" export_protein_accession} \
      ~{true="-V" false="" verbose_reporting} \
      ~{true="-m" false="" cleaveremove_nterm_methionine}
  >>>
  parameter_meta {
    str__strings_match: "<str>    strings to match"
    str_strings_match_note: "<str>    strings to not match Note: if -M or -N strings point to file names that exist, the match/nomatch accessions will be read from those files; one accession per line."
    default_n_option: "by default, -N option only excludes entries that pass the -M criteria.  Using this option, both -M and -N options are mutually exclusive."
    str_new_subset: "<str>    new subset database name (default appends .new to input name)"
    put_subset_database: "put subset database in same directory as input database"
    use_casesensitive_default: "use case-sensitive comparisons (default is case in-sensitive)"
    reverse_output_database: "reverse output database (\"rev_\" appended to description lines.)"
    num_pull_sequences: "<num>    pull out 'num' random sequences from database"
    num_create_files: "<num>    create multiple database files, each with 'num' sequences in them (default 400)"
    str_when_reversing: "<str>    when reversing output, append <string> instead of \"rev_\" to description lines. using this parameter invokes -R automatically."
    print_database_statistics: "print database statistics"
    export_protein_accession: "export protein accession and sequence length to output file"
    verbose_reporting: "verbose reporting"
    cleaveremove_nterm_methionine: "cleave/remove N-term methionine from each sequence"
    fast_a_dot_database: ""
  }
}