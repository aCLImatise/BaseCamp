version 1.0

task Csv2rdf {
  input {
    File? read_config_iniconfig
  }
  command <<<
    csv2rdf \
      ~{if defined(read_config_iniconfig) then ("-f " +  '"' + read_config_iniconfig + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_config_iniconfig: "to read config from a .ini/config file - the file must contain one"
  }
  output {
    File out_stdout = stdout()
  }
}