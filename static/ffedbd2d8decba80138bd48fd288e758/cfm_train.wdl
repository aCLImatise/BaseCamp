version 1.0

task CfmTrain {
  input {
    String input_filename
    String feature_filename
    String config_filename
    String peak_file_dir
    String group
    String status_filename
    String no_train
    String start_energy
  }
  command <<<
    cfm-train \
      ~{input_filename} \
      ~{feature_filename} \
      ~{config_filename} \
      ~{peak_file_dir} \
      ~{group} \
      ~{status_filename} \
      ~{no_train} \
      ~{start_energy}
  >>>
  parameter_meta {
    input_filename: ""
    feature_filename: ""
    config_filename: ""
    peak_file_dir: ""
    group: ""
    status_filename: ""
    no_train: ""
    start_energy: ""
  }
}