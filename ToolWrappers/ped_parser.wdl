version 1.0

task PedParser {
  input {
    Boolean? family_type
    File? outfile
    File? cmms_check
    String family_file
    String or
  }
  command <<<
    ped_parser \
      ~{family_file} \
      ~{or} \
      ~{if (family_type) then "--family_type" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (cmms_check) then "--cmms_check" else ""}
  >>>
  parameter_meta {
    family_type: "[ped|alt|cmms|mip]\\nIf the analysis use one of the known setups,\\nplease specify which one. Default is ped"
    outfile: "Specify the path to a file where results\\nshould be stored."
    cmms_check: "If the id is in cmms format.\\n--to_json                       Print the ped file in json format.\\n--to_madeline                   Print the ped file in madeline format.\\n--to_ped                        Print the ped file in ped format with\\nheaders.\\n--to_dict                       Print the ped file in ped format with\\nheaders.\\n-v, --verbose                   Increase output verbosity.\\n--version\\n-l, --logfile PATH              Path to log file. If none logging is printed\\nto stderr.\\n--loglevel [DEBUG|INFO|WARNING|ERROR|CRITICAL]\\nSet the level of log output.\\n--help                          Show this message and exit.\\n"
    family_file: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
    File out_cmms_check = "${in_cmms_check}"
  }
}