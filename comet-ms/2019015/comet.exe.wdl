version 1.0

task Cometexe {
  input {
    File? print_cometparams_file
    Boolean? params_specify_parameters
    Boolean? name_specify_name
    Boolean? dbase_specify_entry
    Boolean? num_specify_firststart_scan
    Boolean? num_specify_lastend_scan
    Boolean? create_peptide_index
  }
  command <<<
    comet_exe \
      ~{if (print_cometparams_file) then "-p" else ""} \
      ~{if (params_specify_parameters) then "-P" else ""} \
      ~{if (name_specify_name) then "-N" else ""} \
      ~{if (dbase_specify_entry) then "-D" else ""} \
      ~{if (num_specify_firststart_scan) then "-F" else ""} \
      ~{if (num_specify_lastend_scan) then "-L" else ""} \
      ~{if (create_peptide_index) then "-i" else ""}
  >>>
  parameter_meta {
    print_cometparams_file: "to print out a comet.params file (named comet.params.new)"
    params_specify_parameters: "<params> to specify an alternate parameters file (default comet.params)"
    name_specify_name: "<name>   to specify an alternate output base name; valid only with one input file"
    dbase_specify_entry: "<dbase>  to specify a sequence database, overriding entry in parameters file"
    num_specify_firststart_scan: "<num>    to specify the first/start scan to search, overriding entry in parameters file"
    num_specify_lastend_scan: "<num>    to specify the last/end scan to search, overriding entry in parameters file\\n(-L option is required if -F option is used)"
    create_peptide_index: "create peptide index file only (specify .idx file as database for index search)"
  }
  output {
    File out_stdout = stdout()
    File out_print_cometparams_file = "${in_print_cometparams_file}"
  }
}