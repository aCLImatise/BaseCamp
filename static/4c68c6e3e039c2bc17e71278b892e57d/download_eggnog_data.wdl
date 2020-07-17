version 1.0

task DownloadEggnogData.py {
  input {
    Boolean? install_diamond_database
    Boolean? assume__questions
    Boolean? forces_download_exist
    Boolean? simulate_print_commands
    Boolean? quietmode
    Boolean? data_dir
  }
  command <<<
    download_eggnog_data.py \
      ~{true="-D" false="" install_diamond_database} \
      ~{true="-y" false="" assume__questions} \
      ~{true="-f" false="" forces_download_exist} \
      ~{true="-s" false="" simulate_print_commands} \
      ~{true="-q" false="" quietmode} \
      ~{true="--data_dir" false="" data_dir}
  >>>
  parameter_meta {
    install_diamond_database: "Do not install the diamond database"
    assume__questions: "assume \"yes\" to all questions"
    forces_download_exist: "forces download even if the files exist"
    simulate_print_commands: "simulate and print commands. Nothing is downloaded"
    quietmode: "quiet_mode"
    data_dir: "Directory to use for DATA_PATH."
  }
}