version 1.0

task BpClassifyHitsKingdom.pl {
  input {
    Directory? t_slash_taxonomy
    Boolean? g_slash_gi
    Boolean? i_slash_in
    Boolean? e_slash_evalue
    Boolean? z_slash_zcat
    Boolean? v_slash_verbose
    Boolean? h_slash_help
  }
  command <<<
    bp_classify_hits_kingdom.pl \
      ~{if defined(t_slash_taxonomy) then ("-t/--taxonomy " +  '"' + t_slash_taxonomy + '"') else ""} \
      ~{true="-g/--gi" false="" g_slash_gi} \
      ~{true="-i/--in" false="" i_slash_in} \
      ~{true="-e/--evalue" false="" e_slash_evalue} \
      ~{true="-z/--zcat" false="" z_slash_zcat} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    t_slash_taxonomy: "where the taxonomy .dmp files are (from NCBI)"
    g_slash_gi: "File path of the gi2taxid file (gi_taxid_prot.dmp for proteins or gi_taxid_nucl.dmp if the search was against a nucleid database)"
    i_slash_in: "The name of the tab delimited -m8/-m9 output files to process"
    e_slash_evalue: "Provide an E-value cutoff for hits to be considered"
    z_slash_zcat: "Path to the 'zcat' executable, can also be 'gunzip -c' if no zcat on your system."
    v_slash_verbose: "To turn on verbose messages"
    h_slash_help: "Display this helpful information"
  }
}