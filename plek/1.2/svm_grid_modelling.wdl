version 1.0

task SvmGridModelling.py {
  input {
    String grid_do_tpy
    String? grid_options
    String? svm_options
    String dataset
  }
  command <<<
    svm_grid_modelling.py \
      ~{grid_do_tpy} \
      ~{grid_options} \
      ~{svm_options} \
      ~{dataset}
  >>>
  parameter_meta {
    grid_do_tpy: ""
    grid_options: ""
    svm_options: ""
    dataset: ""
  }
}