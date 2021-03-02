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
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    rank: "restrict list to specified taxonomic rank (default: ALL)"
    tmpdir: "specify an alternative directory for temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}