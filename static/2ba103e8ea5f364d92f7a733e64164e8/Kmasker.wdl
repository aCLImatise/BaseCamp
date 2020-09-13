version 1.0

task Kmasker {
  input {
    Boolean? build
    Boolean? run
    Boolean? explore
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
      ~{if (build) then "--build" else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (explore) then "--explore" else ""} \
      ~{if (show_repository) then "--show_repository" else ""} \
      ~{if (show_details) then "--show_details" else ""} \
      ~{if (show_path) then "--show_path" else ""} \
      ~{if (remove_k_index) then "--remove_kindex" else ""} \
      ~{if (set_private_path) then "--set_private_path" else ""} \
      ~{if (set_external_path) then "--set_external_path" else ""} \
      ~{if (expert_setting_km_asker) then "--expert_setting_kmasker" else ""} \
      ~{if (expert_setting_jelly) then "--expert_setting_jelly" else ""} \
      ~{if (expert_setting_blast) then "--expert_setting_blast" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (user_conf) then "--user_conf" else ""} \
      ~{if (global_conf) then "--global_conf" else ""} \
      ~{if (check_install) then "--check_install" else ""} \
      ~{if (setid) then "--setid" else ""} \
      ~{if (long_id) then "--long_id" else ""} \
      ~{if (temp) then "--temp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (make_model) then "--make_model" else ""}
  >>>
  parameter_meta {
    build: "construction of new index (requires --seq)"
    run: "perform analysis and masking (requires --fasta)"
    explore: "perform downstream analysis with constructed index and detected repeats"
    show_repository: "show complete list of private and external k-mer indices"
    show_details: "show details for a requested kindex"
    show_path: "show path Kmaskers looks for constructed kindex"
    remove_k_index: "remove kindex from repository"
    set_private_path: "change path to private repository"
    set_external_path: "change path to external repository [readonly]"
    expert_setting_km_asker: "submit individual parameter to Kmasker eg. pctgap,\\nminseed, mingff (see documentation!)"
    expert_setting_jelly: "submit individual parameter to jellyfish (e.g. on memory usage\\nfor index construction)"
    expert_setting_blast: "submit individual parameter to blast (e.g. '-evalue')"
    threads: "set number of threads [4]"
    bed: "force additional BED output [off]"
    user_conf: "set specific user configuration file [/root/.kmasker_user.config]"
    global_conf: "set specific global configuration file [/usr/local/etc/kmasker.config]"
    check_install: "shows the detected/configured path for all used applications"
    setid: "set a user specified process id"
    long_id: "create a process id that is unique for this host (e.g. for use in cluster environments)"
    temp: "sets the location of temporary files [./temp/]"
    verbose: "enables verbose output and keeps log files"
    make_model: "For use with krispr: Build a new krispr model. You have to specifiy a .csv after this paramter. Details at https://git.io/JecYI. You can use -m to specify the coverage threshold."
  }
  output {
    File out_stdout = stdout()
  }
}