version 1.0

task StaramrDbUpdate {
  input {
    Boolean? update_default
    String? res_finder_commit
    String? point_finder_commit
    String? plasmid_finder_commit
    String directories
  }
  command <<<
    staramr db update \
      ~{directories} \
      ~{if (update_default) then "--update-default" else ""} \
      ~{if defined(res_finder_commit) then ("--resfinder-commit " +  '"' + res_finder_commit + '"') else ""} \
      ~{if defined(point_finder_commit) then ("--pointfinder-commit " +  '"' + point_finder_commit + '"') else ""} \
      ~{if defined(plasmid_finder_commit) then ("--plasmidfinder-commit " +  '"' + plasmid_finder_commit + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staramr:0.7.2--py_0"
  }
  parameter_meta {
    update_default: "Updates default database directory (/usr/local/lib/python3.7/site-packages/staramr/databases/data)."
    res_finder_commit: "The specific git commit for the resfinder database [latest]."
    point_finder_commit: "The specific git commit for the pointfinder database [latest]."
    plasmid_finder_commit: "The specific git commit for the plasmidfinder database [latest]."
    directories: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}