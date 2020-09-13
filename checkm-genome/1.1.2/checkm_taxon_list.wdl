version 1.0

task CheckmTaxonList {
  input {
    String? rank
    Directory? tmpdir
  }
  command <<<
    checkm taxon_list \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    rank: "restrict list to specified taxonomic rank (default: ALL)"
    tmpdir: "specify an alternative directory for temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}