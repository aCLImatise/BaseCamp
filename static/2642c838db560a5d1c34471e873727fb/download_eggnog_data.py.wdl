version 1.0

task DownloadEggnogDatapy {
  input {
    Boolean? install_diamond_database
    Boolean? assume__questions
    Boolean? forces_download_exist
    Boolean? simulate_print_commands
    Boolean? quietmode
    Boolean? data_dir
  }
  command <<<
    download_eggnog_data_py \
      ~{if (install_diamond_database) then "-D" else ""} \
      ~{if (assume__questions) then "-y" else ""} \
      ~{if (forces_download_exist) then "-f" else ""} \
      ~{if (simulate_print_commands) then "-s" else ""} \
      ~{if (quietmode) then "-q" else ""} \
      ~{if (data_dir) then "--data_dir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install_diamond_database: "Do not install the diamond database"
    assume__questions: "assume \\\"yes\\\" to all questions"
    forces_download_exist: "forces download even if the files exist"
    simulate_print_commands: "simulate and print commands. Nothing is downloaded"
    quietmode: "quiet_mode"
    data_dir: "Directory to use for DATA_PATH."
  }
  output {
    File out_stdout = stdout()
  }
}