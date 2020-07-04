version 1.0

task MedpyGraphcutVoxel.pyOutput {
  input {
    String me_dpy_graph_cut_voxel_do_tpy
  }
  command <<<
    medpy_graphcut_voxel.py output \
      ~{me_dpy_graph_cut_voxel_do_tpy}
  >>>
  parameter_meta {
    me_dpy_graph_cut_voxel_do_tpy: ""
  }
}