version 1.0

task PhylocsfAnnotatewithtracks {
  input {
    File? path_where_written
    String phylo_csf
  }
  command <<<
    phylocsf__ annotate_with_tracks \
      ~{phylo_csf} \
      ~{if defined(path_where_written) then ("--output " +  '"' + path_where_written + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0"
  }
  parameter_meta {
    path_where_written: "Path where output GFF/GTF will be written to. If it does not\\nexist, it will be created. Default: output files are stored next\\nto the input files.\\n"
    phylo_csf: ""
  }
  output {
    File out_stdout = stdout()
  }
}