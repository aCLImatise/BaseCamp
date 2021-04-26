version 1.0

task MedpyGraphcutVoxelpySigma {
  input {
    String me_dpy_graph_cut_voxel_do_tpy
  }
  command <<<
    medpy_graphcut_voxel_py sigma \
      ~{me_dpy_graph_cut_voxel_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    me_dpy_graph_cut_voxel_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}