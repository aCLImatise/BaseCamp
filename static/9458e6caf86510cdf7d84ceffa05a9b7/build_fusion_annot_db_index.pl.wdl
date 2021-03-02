version 1.0

task BuildFusionAnnotDbIndexpl {
  command <<<
    build_fusion_annot_db_index_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}