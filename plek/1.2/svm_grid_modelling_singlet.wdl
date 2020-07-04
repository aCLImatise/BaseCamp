version 1.0

task SvmGridModellingSinglet.py {
  input {
    String grid_do_tpy
    String? grid_options
    String? svm_options
    String dataset
  }
  command <<<
    svm_grid_modelling_singlet.py \
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