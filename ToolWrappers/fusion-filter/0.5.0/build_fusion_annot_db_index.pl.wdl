version 1.0

task BuildFusionAnnotDbIndexpl {
  command <<<
    build_fusion_annot_db_index_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}