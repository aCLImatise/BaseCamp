version 1.0

task CheckmTaxonSetMarkerFile {
  input {
    Boolean? q
    String? tmpdir
    String check_m
    String tax_on_set
  }
  command <<<
    checkm taxon_set marker_file \
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