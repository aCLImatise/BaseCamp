version 1.0

task VirsorterConfig {
  input {
    Boolean? show
    Boolean? show_source
    Boolean? in_it_source
    File? db_dir
    Int? set
    String? get
    String group_info_do_trna_dot_min_genome_size
  }
  command <<<
    virsorter config \
      ~{group_info_do_trna_dot_min_genome_size} \
      ~{if (show) then "--show" else ""} \
      ~{if (show_source) then "--show-source" else ""} \
      ~{if (in_it_source) then "--init-source" else ""} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(set) then ("--set " +  '"' + set + '"') else ""} \
      ~{if defined(get) then ("--get " +  '"' + get + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/virsorter:2.1--py_0"
  }
  parameter_meta {
    show: "show all configuration values  [default: False]"
    show_source: "show path of the configuration file  [default: False]"
    in_it_source: "initialize configuration file  [default: False]"
    db_dir: "directory for databases; required for --init-source"
    set: "set KEY to VAL with the format: KEY=VAL; for nested dict in\\nYAML use KEY1.KEY2=VAL (e.g. virsorter config --set\\nGROUP_INFO.RNA.MIN_GENOME_SIZE=2000)"
    get: "the value of a KEY (e.g. virsorter config --get"
    group_info_do_trna_dot_min_genome_size: "-h, --help     Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}