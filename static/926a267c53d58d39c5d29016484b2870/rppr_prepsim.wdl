version 1.0

task RpprPrepsim {
  input {
    Boolean? reference_package_path
    Boolean? out_dir
    Boolean? prefix
    Boolean? commadelimited_list_taxids
    Boolean? help
    String prep_sim
  }
  command <<<
    rppr prepsim \
      ~{prep_sim} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (commadelimited_list_taxids) then "-r" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames. Required."
    commadelimited_list_taxids: "Comma-delimited list of tax_ids to prune."
    help: "Display this list of options"
    prep_sim: ""
  }
  output {
    File out_stdout = stdout()
  }
}