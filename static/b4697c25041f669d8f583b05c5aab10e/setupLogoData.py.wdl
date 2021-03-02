version 1.0

task SetupLogoDatapy {
  input {
    Boolean? all
    String repository_folder
  }
  command <<<
    setupLogoData_py \
      ~{repository_folder} \
      ~{if (all) then "--all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Fetch all data sets."
    repository_folder: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}