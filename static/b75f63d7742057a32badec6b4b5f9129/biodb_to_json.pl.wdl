version 1.0

task Biodbtojsonpl {
  input {
    String? conf
    Boolean? quiet
    String? refid
    Directory? out
    Boolean? compress
    File description
    String options
  }
  command <<<
    biodb_to_json_pl \
      ~{description} \
      ~{options} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(refid) then ("--refid " +  '"' + refid + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  parameter_meta {
    conf: "\\"
    quiet: "Quiet. Don't print progress messages."
    refid: "Optional. Single reference sequence name or id for which to process\\ndata.\\nBy default, processes all data."
    out: "Directory where output should go. Default: data/"
    compress: "If passed, compress the output with gzip (requires some web server\\nconfiguration to serve properly).\\n"
    description: "DESCRIPTION"
    options: "--help | -? | -h\\nDisplay an extended help screen."
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}