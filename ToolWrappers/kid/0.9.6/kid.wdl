version 1.0

task Kid {
  input {
    Int? encoding
    File? specify_output_output
    Directory? port__serverhostportspecify
    File file
    String? args
  }
  command <<<
    kid \
      ~{file} \
      ~{args} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(specify_output_output) then ("--output " +  '"' + specify_output_output + '"') else ""} \
      ~{if defined(port__serverhostportspecify) then ("-s " +  '"' + port__serverhostportspecify + '"') else ""}
  >>>
  parameter_meta {
    encoding: "Specify the output character encoding.\\nDefault: utf-8"
    specify_output_output: "Specify the output file.\\nDefault: standard output"
    port__serverhostportspecify: ":port, --server=host:port\\nSpecify the server address if\\nyou want to start the HTTP server.\\nInstead of the Kid template,\\nyou can specify a base directory."
    file: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_output = "${in_specify_output_output}"
  }
}