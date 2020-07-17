version 1.0

task SetupLogoData.py {
  input {
    Boolean? all
  }
  command <<<
    setupLogoData.py \
      ~{true="--all" false="" all}
  >>>
  parameter_meta {
    all: "Fetch all data sets."
  }
}