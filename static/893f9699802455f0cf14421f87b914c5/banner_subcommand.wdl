version 1.0

task BannerSubcommand {
  input {
    String train
    String predict
    String version
    String subcommand
  }
  command <<<
    banner subcommand \
      ~{train} \
      ~{predict} \
      ~{version} \
      ~{subcommand}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    train: "Train takes a banner-matrix file from hulk and uses it to train a Random Forest Classifier"
    predict: "Predict collects sketches from STDIN and classifies them using a RFC"
    version: "Prints the banner version number and exits"
    subcommand: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}