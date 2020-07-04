version 1.0

task AlignmentsFilter {
  input {
    Boolean? arg_set_minscore_value
    Boolean? arg_set_pid
    Boolean? arg_set_toppercent_value
    Boolean? arg_set_evalue
    Boolean? arg_set_number_top
    Boolean? sort_alignments_decreasing
    Boolean? combination_query_sequence
    Boolean? arg_set_minimum_number
    Boolean? remove_alignments_test
    Boolean? arg_sample_identifier
    Boolean? arg_map_identifier
    Boolean? instead_suppressing_alignments
  }
  command <<<
    alignments-filter \
      ~{true="-m" false="" arg_set_minscore_value} \
      ~{true="-p" false="" arg_set_pid} \
      ~{true="-t" false="" arg_set_toppercent_value} \
      ~{true="-e" false="" arg_set_evalue} \
      ~{true="-b" false="" arg_set_number_top} \
      ~{true="-s" false="" sort_alignments_decreasing} \
      ~{true="-k" false="" combination_query_sequence} \
      ~{true="-c" false="" arg_set_minimum_number} \
      ~{true="-r" false="" remove_alignments_test} \
      ~{true="-x" false="" arg_sample_identifier} \
      ~{true="-y" false="" arg_map_identifier} \
      ~{true="-z" false="" instead_suppressing_alignments}
  >>>
  parameter_meta {
    arg_set_minscore_value: "[ --min-score ] arg (=0)           set min-score filter value"
    arg_set_pid: "[ --min-pid ] arg (=0)             set minimal PID to consider"
    arg_set_toppercent_value: "[ --top-percent ] arg (=1)         set top-percent filter value"
    arg_set_evalue: "[ --max-evalue ] arg (=-1)         set maximum evalue for filtering"
    arg_set_number_top: "[ --best-alignments ] arg (=0)     set number of top score alignments to  consider (after toppercent filter)"
    sort_alignments_decreasing: "[ --sort-score ]                   sort alignments by decreasing score"
    combination_query_sequence: "[ --keep-best-per-ref ]            for each combination of query and  reference sequence id all but the best  scoring alignment are removed"
    arg_set_minimum_number: "[ --min-support ] arg (=1)         set minimum number of hits an alignment needs to have (after filtering)"
    remove_alignments_test: "[ --remove-ref-from-query-taxon ]  remove alignments for labeled data to  test different degrees of taxonomic  distance"
    arg_sample_identifier: "[ --taxon-mapping-sample ] arg     map sample identifier to taxon"
    arg_map_identifier: "[ --taxon-mapping-reference ] arg  map reference identifier to taxon"
    instead_suppressing_alignments: "[ --mask-by-star ]                 instead of suppressing filtered  alignments mask them by prefixing a  star at the line start"
  }
}