version 1.0

task SingularityApps {
  input {
    String singularity_appname
    String singularity_app_root
    String singularity_app_meta
    String singularity_appdata
    String singularity_app_input
    String singularity_app_output
  }
  command <<<
    singularity apps \
      ~{singularity_appname} \
      ~{singularity_app_root} \
      ~{singularity_app_meta} \
      ~{singularity_appdata} \
      ~{singularity_app_input} \
      ~{singularity_app_output}
  >>>
  parameter_meta {
    singularity_appname: "the name of the application"
    singularity_app_root: "the application base (/scif/apps/<app>)"
    singularity_app_meta: "the application metadata folder"
    singularity_appdata: "the data base folder for active app"
    singularity_app_input: "expected input folder within data base folder"
    singularity_app_output: "the output data folder within data base folder"
  }
}