version 1.0

task CheckmTaxonSetTaxon {
  input {
    Boolean? q
    String? tmpdir
    String check_m
    String tax_on_set
  }
  command <<<
    checkm taxon_set taxon \
      ~{check_m} \
      ~{tax_on_set} \
      ~{true="-q" false="" q} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    tmpdir: ""
    check_m: ""
    tax_on_set: ""
  }
}