version 1.0

task PhylophlanWriteDefaultConfigssh {
  input {
    String? mode
    Boolean? error_exists_make
    String? d
    String? o
    String mkdir
    String phylo_phl_an_write_config_file
    Directory directory_dot_dot_dot
  }
  command <<<
    phylophlan_write_default_configs_sh \
      ~{mkdir} \
      ~{phylo_phl_an_write_config_file} \
      ~{directory_dot_dot_dot} \
      ~{if defined(mode) then ("-m " +  '"' + mode + '"') else ""} \
      ~{if (error_exists_make) then "-p" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylophlan:3.0.2--py_0"
  }
  parameter_meta {
    mode: "Mode"
    error_exists_make: "No error if exists; make parent directories as needed"
    d: ""
    o: ""
    mkdir: ""
    phylo_phl_an_write_config_file: ""
    directory_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}