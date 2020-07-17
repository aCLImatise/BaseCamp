version 1.0

task BiodbToJson.pl {
  input {
    String? out
    Boolean? compress
  }
  command <<<
    biodb-to-json.pl \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--compress" false="" compress}
  >>>
  parameter_meta {
    out: "Directory where output should go. Default: data/"
    compress: "If passed, compress the output with gzip (requires some web server configuration to serve properly)."
  }
}