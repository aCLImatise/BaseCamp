version 1.0

task Kmasker {
  input {
    Boolean? show_repository
    Boolean? show_details
    Boolean? show_path
    Boolean? remove_k_index
    Boolean? set_private_path
    Boolean? set_external_path
    Boolean? expert_setting_km_asker
    Boolean? expert_setting_jelly
    Boolean? expert_setting_blast
    Boolean? threads
    Boolean? bed
    Boolean? user_conf
    Boolean? global_conf
    Boolean? check_install
    Boolean? setid
    Boolean? long_id
    Boolean? temp
    Boolean? verbose
    Boolean? make_model
  }
  command <<<
    Kmasker \
      ~{true="--show_repository" false="" show_repository} \
      ~{true="--show_details" false="" show_details} \
      ~{true="--show_path" false="" show_path} \
      ~{true="--remove_kindex" false="" remove_k_index} \
      ~{true="--set_private_path" false="" set_private_path} \
      ~{true="--set_external_path" false="" set_external_path} \
      ~{true="--expert_setting_kmasker" false="" expert_setting_km_asker} \
      ~{true="--expert_setting_jelly" false="" expert_setting_jelly} \
      ~{true="--expert_setting_blast" false="" expert_setting_blast} \
      ~{true="--threads" false="" threads} \
      ~{true="--bed" false="" bed} \
      ~{true="--user_conf" false="" user_conf} \
      ~{true="--global_conf" false="" global_conf} \
      ~{true="--check_install" false="" check_install} \
      ~{true="--setid" false="" setid} \
      ~{true="--long_id" false="" long_id} \
      ~{true="--temp" false="" temp} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--make_model" false="" make_model}
  >>>
  parameter_meta {
    show_repository: "show complete list of private and external k-mer indices"
    show_details: "show details for a requested kindex"
    show_path: "show path Kmaskers looks for constructed kindex"
    remove_k_index: "remove kindex from repository"
    set_private_path: "change path to private repository"
    set_external_path: "change path to external repository [readonly]"
    expert_setting_km_asker: "submit individual parameter to Kmasker eg. pctgap, minseed, mingff (see documentation!)"
    expert_setting_jelly: "submit individual parameter to jellyfish (e.g. on memory usage  for index construction)"
    expert_setting_blast: "submit individual parameter to blast (e.g. '-evalue')"
    threads: "set number of threads [4]"
    bed: "force additional BED output [off]"
    user_conf: "set specific user configuration file [/home/ubuntu/.kmasker_user.config]"
    global_conf: "set specific global configuration file [/tmp/tmpi46i3oh1/etc/kmasker.config]"
    check_install: "shows the detected/configured path for all used applications"
    setid: "set a user specified process id"
    long_id: "create a process id that is unique for this host (e.g. for use in cluster environments)"
    temp: "sets the location of temporary files [./temp/]"
    verbose: "enables verbose output and keeps log files"
    make_model: "For use with krispr: Build a new krispr model. You have to specifiy a .csv after this paramter. Details at https://git.io/JecYI. You can use -m to specify the coverage threshold."
  }
}