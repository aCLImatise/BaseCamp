version 1.0

task Comet {
  input {
    File? print_cometparams_file
    Boolean? params_specify_parameters
    Boolean? name_specify_name
    Boolean? dbase_specify_database
    Boolean? num_specify_firststart
    Boolean? num_specify_lastend
    Boolean? create_peptide_file
  }
  command <<<
    comet \
      ~{if (print_cometparams_file) then "-p" else ""} \
      ~{if (params_specify_parameters) then "-P" else ""} \
      ~{if (name_specify_name) then "-N" else ""} \
      ~{if (dbase_specify_database) then "-D" else ""} \
      ~{if (num_specify_firststart) then "-F" else ""} \
      ~{if (num_specify_lastend) then "-L" else ""} \
      ~{if (create_peptide_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_cometparams_file: "to print out a comet.params file (named comet.params.new)"
    params_specify_parameters: "<params> to specify an alternate parameters file (default comet.params)"
    name_specify_name: "<name>   to specify an alternate output base name; valid only with one input file"
    dbase_specify_database: "<dbase>  to specify a sequence database, overriding entry in parameters file"
    num_specify_firststart: "<num>    to specify the first/start scan to search, overriding entry in parameters file"
    num_specify_lastend: "<num>    to specify the last/end scan to search, overriding entry in parameters file\\n(-L option is required if -F option is used)"
    create_peptide_file: "create peptide index file only (specify .idx file as database for index search)"
  }
  output {
    File out_stdout = stdout()
    File out_print_cometparams_file = "${in_print_cometparams_file}"
  }
}