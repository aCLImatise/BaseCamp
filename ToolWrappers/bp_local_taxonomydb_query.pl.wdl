version 1.0

task BpLocalTaxonomydbQuerypl {
  input {
    String taxonid
  }
  command <<<
    bp_local_taxonomydb_query_pl \
      ~{taxonid}
  >>>
  parameter_meta {
    taxonid: "DESCRIPTION"
  }
  output {
    File out_stdout = stdout()
  }
}