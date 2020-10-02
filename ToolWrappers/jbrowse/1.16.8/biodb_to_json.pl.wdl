version 1.0

task Biodbtojsonpl {
  input {
    Boolean? quiet
    File? conf
    String? ref
    Directory? out
    Boolean? compress
    File file
    String options
  }
  command <<<
    biodb_to_json_pl \
      ~{file} \
      ~{options} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  parameter_meta {
    quiet: "| -q\\nQuiet. Don't print progress messages."
    conf: "Required. Path to the configuration file to read. File must be in\\nJSON format."
    ref: "| --refid <ref seq id>\\nOptional. Single reference sequence name or id for which to process\\ndata.\\nBy default, processes all data."
    out: "Directory where output should go. Default: data/"
    compress: "If passed, compress the output with gzip (requires some web server\\nconfiguration to serve properly).\\n"
    file: "DESCRIPTION"
    options: "--help | -? | -h\\nDisplay an extended help screen."
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}