version 1.0

task CheckmTaxonSet {
  input {
    Boolean? quiet
    Directory? tmpdir
  }
  command <<<
    checkm taxon_set \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}