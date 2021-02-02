version 1.0

task Alignmentsfilter {
  input {
    Boolean? arg_set_filter_value
    Boolean? arg_set_pid
    Boolean? arg_set_toppercent_value
    Boolean? arg_set_evalue
    Boolean? arg_set_number_top
    Boolean? sort_alignments_decreasing
    Boolean? combination_query_andreference
    Boolean? arg_set_minimum_number
    Boolean? remove_alignments_labeled
    Boolean? arg_map_identifier
    Boolean? arg_map_reference
    Boolean? instead_suppressing_filteredalignments
  }
  command <<<
    alignments_filter \
      ~{if (arg_set_filter_value) then "-m" else ""} \
      ~{if (arg_set_pid) then "-p" else ""} \
      ~{if (arg_set_toppercent_value) then "-t" else ""} \
      ~{if (arg_set_evalue) then "-e" else ""} \
      ~{if (arg_set_number_top) then "-b" else ""} \
      ~{if (sort_alignments_decreasing) then "-s" else ""} \
      ~{if (combination_query_andreference) then "-k" else ""} \
      ~{if (arg_set_minimum_number) then "-c" else ""} \
      ~{if (remove_alignments_labeled) then "-r" else ""} \
      ~{if (arg_map_identifier) then "-x" else ""} \
      ~{if (arg_map_reference) then "-y" else ""} \
      ~{if (instead_suppressing_filteredalignments) then "-z" else ""}
  >>>
  parameter_meta {
    arg_set_filter_value: "[ --min-score ] arg (=0)           set min-score filter value"
    arg_set_pid: "[ --min-pid ] arg (=0)             set minimal PID to consider"
    arg_set_toppercent_value: "[ --top-percent ] arg (=1)         set top-percent filter value"
    arg_set_evalue: "[ --max-evalue ] arg (=-1)         set maximum evalue for filtering"
    arg_set_number_top: "[ --best-alignments ] arg (=0)     set number of top score alignments to\\nconsider (after toppercent filter)"
    sort_alignments_decreasing: "[ --sort-score ]                   sort alignments by decreasing score"
    combination_query_andreference: "[ --keep-best-per-ref ]            for each combination of query and\\nreference sequence id all but the best\\nscoring alignment are removed"
    arg_set_minimum_number: "[ --min-support ] arg (=1)         set minimum number of hits an alignment\\nneeds to have (after filtering)"
    remove_alignments_labeled: "[ --remove-ref-from-query-taxon ]  remove alignments for labeled data to\\ntest different degrees of taxonomic\\ndistance"
    arg_map_identifier: "[ --taxon-mapping-sample ] arg     map sample identifier to taxon"
    arg_map_reference: "[ --taxon-mapping-reference ] arg  map reference identifier to taxon"
    instead_suppressing_filteredalignments: "[ --mask-by-star ]                 instead of suppressing filtered\\nalignments mask them by prefixing a\\nstar at the line start\\n"
  }
  output {
    File out_stdout = stdout()
  }
}