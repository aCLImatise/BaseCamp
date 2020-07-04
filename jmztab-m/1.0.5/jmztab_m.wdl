version 1.0

task JmztabM {
  input {
    String? check
    Boolean? from_json
    String? level
    Boolean? message
    String? outfile
    String? check_semantic
    Boolean? to_json
    String jm_z_tab_m_cli
  }
  command <<<
    jmztab-m \
      ~{jm_z_tab_m_cli} \
      ~{if defined(check) then ("--check " +  '"' + check + '"') else ""} \
      ~{true="--fromJson" false="" from_json} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{true="--message" false="" message} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(check_semantic) then ("--checkSemantic " +  '"' + check_semantic + '"') else ""} \
      ~{true="--toJson" false="" to_json}
  >>>
  parameter_meta {
    check: "Example: -c /path/to/file.mztab. Check and validate the provided a mzTab file."
    from_json: "Example: --fromJson. Will parse inFile as JSON and write mzTab representation to disk. Requires validation to be successful!"
    level: "Choose validation level (Info, Warn, Error), default level is Info!"
    message: "Example: -m 1002. Print validation message detail information based on error code."
    outfile: "Example: -o \"output.txt\". Record validation messages into outfile. If not set, print validation messages to stdout/stderr."
    check_semantic: "Example: -s /path/to/mappingFile.xml. Use the provided mapping file for semantic validation. If no mapping file is provided, the default one will be used. Requires an active internet connection!"
    to_json: "Example: --toJson. Will write a json representation of inFile to disk. Requires validation to be successful!"
    jm_z_tab_m_cli: ""
  }
}