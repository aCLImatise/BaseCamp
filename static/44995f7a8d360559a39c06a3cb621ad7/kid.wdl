version 1.0

task Kid {
  input {
    String? encoding
    String? specify_output_file
    String? port__serverhostport
    File file
    String? args
  }
  command <<<
    kid \
      ~{file} \
      ~{args} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(port__serverhostport) then ("-s " +  '"' + port__serverhostport + '"') else ""}
  >>>
  parameter_meta {
    encoding: "Specify the output character encoding. Default: utf-8"
    specify_output_file: "Specify the output file. Default: standard output"
    port__serverhostport: ":port, --server=host:port Specify the server address if you want to start the HTTP server. Instead of the Kid template, you can specify a base directory."
    file: ""
    args: ""
  }
}