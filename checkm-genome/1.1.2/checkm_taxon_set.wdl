version 1.0

task CheckmTaxonSet {
  input {
    Boolean? quiet
    String? tmpdir
  }
  command <<<
    checkm taxon_set \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
  }
}