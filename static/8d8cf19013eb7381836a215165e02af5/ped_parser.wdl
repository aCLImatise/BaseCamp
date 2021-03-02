version 1.0

task PedParser {
  input {
    Boolean? family_type
    File? outfile
    Boolean? cmms_check
    Boolean? to_json
    Boolean? to_madeline
    Boolean? to_ped
    Boolean? loglevel
    String family_file
    String or
  }
  command <<<
    ped_parser \
      ~{family_file} \
      ~{or} \
      ~{if (family_type) then "--family_type" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (cmms_check) then "--cmms_check" else ""} \
      ~{if (to_json) then "--to_json" else ""} \
      ~{if (to_madeline) then "--to_madeline" else ""} \
      ~{if (to_ped) then "--to_ped" else ""} \
      ~{if (loglevel) then "--loglevel" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    family_type: "[ped|alt|cmms|mip]\\nIf the analysis use one of the known setups,\\nplease specify which one. Default is ped"
    outfile: "Specify the path to a file where results\\nshould be stored."
    cmms_check: "If the id is in cmms format."
    to_json: "Print the ped file in json format."
    to_madeline: "Print the ped file in madeline format."
    to_ped: "Print the ped file in ped format with"
    loglevel: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\\nSet the level of log output."
    family_file: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}