version 1.0

task Comet.exe {
  input {
    Boolean? print_cometparams_file
    Boolean? params_specify_cometparams
    Boolean? name_specify_name
    Boolean? dbase_specify_entry
    Boolean? num_specify_firststart_scan
    Boolean? num_specify_lastend_scan
    Boolean? create_peptide_index
    String input_files
  }
  command <<<
    comet.exe \
      ~{input_files} \
      ~{true="-p" false="" print_cometparams_file} \
      ~{true="-P" false="" params_specify_cometparams} \
      ~{true="-N" false="" name_specify_name} \
      ~{true="-D" false="" dbase_specify_entry} \
      ~{true="-F" false="" num_specify_firststart_scan} \
      ~{true="-L" false="" num_specify_lastend_scan} \
      ~{true="-i" false="" create_peptide_index}
  >>>
  parameter_meta {
    print_cometparams_file: "to print out a comet.params file (named comet.params.new)"
    params_specify_cometparams: "<params> to specify an alternate parameters file (default comet.params)"
    name_specify_name: "<name>   to specify an alternate output base name; valid only with one input file"
    dbase_specify_entry: "<dbase>  to specify a sequence database, overriding entry in parameters file"
    num_specify_firststart_scan: "<num>    to specify the first/start scan to search, overriding entry in parameters file"
    num_specify_lastend_scan: "<num>    to specify the last/end scan to search, overriding entry in parameters file (-L option is required if -F option is used)"
    create_peptide_index: "create peptide index file only (specify .idx file as database for index search)"
    input_files: ""
  }
}