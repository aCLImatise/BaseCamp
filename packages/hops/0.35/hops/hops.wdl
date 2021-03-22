version 1.0

task Hops {
  input {
    File? config_file
    Directory? specify_input_directory
    String? mode
    Directory? specify_out_directory
    Boolean? v
  }
  command <<<
    hops \
      ~{if defined(config_file) then ("--configFile " +  '"' + config_file + '"') else ""} \
      ~{if defined(specify_input_directory) then ("--input " +  '"' + specify_input_directory + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(specify_out_directory) then ("--output " +  '"' + specify_out_directory + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hops:0.35--0"
  }
  parameter_meta {
    config_file: "Path to Config File"
    specify_input_directory: "Specify input directory or files valid option depend on mode"
    mode: "HOPS Mode to run accpeted full, malt, maltex, post"
    specify_out_directory: "Specify out directory"
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_specify_out_directory = "${in_specify_out_directory}"
  }
}