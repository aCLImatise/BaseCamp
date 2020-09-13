version 1.0

task Restrict {
  input {
    Boolean? site_len
    Boolean? enzymes
    Boolean? data_file
    Boolean? m_file
    Boolean? min
    Boolean? max
    Boolean? solo_fragment
    Boolean? single
    Boolean? plasmid
    Boolean? methylation
    Boolean? fragments
    String considered_dot
    String the_mdot
  }
  command <<<
    _restrict \
      ~{considered_dot} \
      ~{the_mdot} \
      ~{if (site_len) then "-sitelen" else ""} \
      ~{if (enzymes) then "-enzymes" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (m_file) then "-mfile" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (solo_fragment) then "-solofragment" else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (plasmid) then "-plasmid" else ""} \
      ~{if (methylation) then "-methylation" else ""} \
      ~{if (fragments) then "-fragments" else ""}
  >>>
  parameter_meta {
    site_len: "integer    [4] This sets the minimum length of the\\nrestriction enzyme recognition site. Any\\nenzymes with sites shorter than this will be\\nignored. (Integer from 2 to 20)"
    enzymes: "string     [all] The name 'all' reads in all enzyme\\nnames from the REBASE database. You can\\nspecify enzymes by giving their names with\\ncommas between then, such as:\\n'HincII,hinfI,ppiI,hindiii'.\\nThe case of the names is not important. You\\ncan specify a file of enzyme names to read\\nin by giving the name of the file holding\\nthe enzyme names with a '@' character in\\nfront of it, for example, '@enz.list'.\\nBlank lines and lines starting with a hash\\ncharacter or '!' are ignored and all other\\nlines are concatenated together with a comma\\ncharacter ',' and then treated as the list\\nof enzymes to search for.\\nAn example of a file of enzyme names is:\\n! my enzymes\\nHincII, ppiII\\n! other enzymes\\nhindiii\\nHinfI\\nPpiI (Any string)"
    data_file: "datafile   Restriction enzyme data file (optional)"
    m_file: "datafile   [Emethylsites.dat] Restriction enzyme\\nmethylation data file"
    min: "integer    [1] This sets the minimum number of cuts for\\nany restriction enzyme that will be\\nconsidered. Any enzymes that cut fewer times\\nthan this will be ignored. (Integer from 1\\nto 1000)"
    max: "integer    [2000000000] This sets the maximum number of\\ncuts for any restriction enzyme that will\\nbe considered. Any enzymes that cut more\\ntimes than this will be ignored. (Any\\ninteger value)"
    solo_fragment: "boolean    [N] This gives the fragment lengths of the\\nforward sense strand produced by complete\\nrestriction by each restriction enzyme on\\nits own. Results are added to the tail\\nsection of the report."
    single: "boolean    [N] If this is set then this forces the\\nvalues of the mincuts and maxcuts qualifiers\\nto both be 1. Any other value you may have\\nset them to will be ignored."
    plasmid: "boolean    [N] If this is set then this allows searches\\nfor restriction enzyme recognition site and\\ncut positions that span the end of the\\nsequence to be considered."
    methylation: "boolean    [N] If this is set then RE recognition sites\\nwill not match methylated bases."
    fragments: "boolean    [N] This gives the fragment lengths of the\\nforward sense strand produced by complete\\nrestriction using all of the input enzymes\\ntogether. Results are added to the tail\\nsection of the report."
    considered_dot: "-[no]ambiguity      boolean    [Y] This allows those enzymes which have one"
    the_mdot: "-alphabetic         boolean    [N] Sort output alphabetically"
  }
  output {
    File out_stdout = stdout()
  }
}