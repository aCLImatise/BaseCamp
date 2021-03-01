version 1.0

task Jmztabm {
  input {
    Boolean? from_json
    String? level
    Boolean? message
    String? outfile
    File? check_semantic
    Boolean? to_json
    String jm_z_tab_m_cli
  }
  command <<<
    jmztab_m \
      ~{jm_z_tab_m_cli} \
      ~{if (from_json) then "--fromJson" else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if (message) then "--message" else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(check_semantic) then ("--checkSemantic " +  '"' + check_semantic + '"') else ""} \
      ~{if (to_json) then "--toJson" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    from_json: "Example: --fromJson. Will parse inFile as JSON\\nand write mzTab representation to disk.\\nRequires validation to be successful!"
    level: "Choose validation level (Info, Warn, Error),\\ndefault level is Info!"
    message: "Example: -m 1002. Print validation message\\ndetail information based on error code."
    outfile: "Example: -o \\\"output.txt\\\". Record validation\\nmessages into outfile. If not set, print\\nvalidation messages to stdout/stderr."
    check_semantic: "Example: -s /path/to/mappingFile.xml. Use the\\nprovided mapping file for semantic validation.\\nIf no mapping file is provided, the default\\none will be used. Requires an active internet\\nconnection!"
    to_json: "Example: --toJson. Will write a json\\nrepresentation of inFile to disk. Requires\\nvalidation to be successful!"
    jm_z_tab_m_cli: "-c,--check <arg>           Example: -c /path/to/file.mztab. Check and\\nvalidate the provided a mzTab file."
  }
  output {
    File out_stdout = stdout()
  }
}