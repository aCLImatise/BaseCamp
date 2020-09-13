version 1.0

task CheckmTaxonSetMarkerFile {
  input {
    String? tmpdir
    Boolean? q
    String check_m
    String tax_on_set
  }
  command <<<
    checkm taxon_set marker_file \
      ~{check_m} \
      ~{tax_on_set} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (q) then "-q" else ""}
  >>>
  parameter_meta {
    tmpdir: ""
    q: ""
    check_m: ""
    tax_on_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}