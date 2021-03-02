version 1.0

task Cachedas {
  input {
    Boolean? sequence_sources_only
    File? outfile
    Boolean? host
    Boolean? path
    Boolean? port
    Boolean? servername
    File additional_optional_qualifiers
  }
  command <<<
    cachedas \
      ~{additional_optional_qualifiers} \
      ~{if defined(sequence_sources_only) then ("-sequencesourcesonly " +  '"' + sequence_sources_only + '"') else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (host) then "-host" else ""} \
      ~{if (path) then "-path" else ""} \
      ~{if (port) then "-port" else ""} \
      ~{if (servername) then "-servername" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence_sources_only: "[N] Display DAS sequence sources only"
    outfile: "outfile    [stdout] Output file name"
    host: "string     [www.dasregistry.org] DAS registry/server\\nhost location (Any string)"
    path: "string     [/das] DAS registry/server path on\\nregistry/server host (Any string)"
    port: "integer    [80] DAS registry/server port on\\nregistry/server host (Any integer value)"
    servername: "string     [das] Name of a DAS server defined in EMBOSS\\nresource files (Any string)"
    additional_optional_qualifiers: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}