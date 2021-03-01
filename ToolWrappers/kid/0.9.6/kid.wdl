version 1.0

task Kid {
  input {
    Int? encoding
    File? specify_output_filedefault
    Directory? port__serverhostportspecify
    File var_file
    String? args
  }
  command <<<
    kid \
      ~{var_file} \
      ~{args} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(specify_output_filedefault) then ("--output " +  '"' + specify_output_filedefault + '"') else ""} \
      ~{if defined(port__serverhostportspecify) then ("-s " +  '"' + port__serverhostportspecify + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    encoding: "Specify the output character encoding.\\nDefault: utf-8"
    specify_output_filedefault: "Specify the output file.\\nDefault: standard output"
    port__serverhostportspecify: ":port, --server=host:port\\nSpecify the server address if\\nyou want to start the HTTP server.\\nInstead of the Kid template,\\nyou can specify a base directory."
    var_file: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_filedefault = "${in_specify_output_filedefault}"
  }
}