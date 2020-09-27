version 1.0

task MedpyGraphcutVoxelpyMarkers {
  input {
    String me_dpy_graph_cut_voxel_do_tpy
  }
  command <<<
    medpy_graphcut_voxel_py markers \
      ~{me_dpy_graph_cut_voxel_do_tpy}
  >>>
  parameter_meta {
    me_dpy_graph_cut_voxel_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}