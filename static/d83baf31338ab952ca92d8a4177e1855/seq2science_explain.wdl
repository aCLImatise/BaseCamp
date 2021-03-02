version 1.0

task Seq2scienceExplain {
  input {
    File? config_file
  }
  command <<<
    seq2science explain \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file: "The path to the config file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}