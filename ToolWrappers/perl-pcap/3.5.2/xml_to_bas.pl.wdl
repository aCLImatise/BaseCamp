version 1.0

task XmlToBaspl {
  input {
    Boolean? uri
    File? name_file_defaults
    Boolean? bam
    File? local_path
    Boolean? man
    Boolean? version
  }
  command <<<
    xml_to_bas_pl \
      ~{if (uri) then "-uri" else ""} \
      ~{if (name_file_defaults) then "-output" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if defined(local_path) then ("-local-path " +  '"' + local_path + '"') else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uri: "Same URI used by gtdownload"
    name_file_defaults: "Name for output file. Defaults to STDOUT."
    bam: "BAM|CRAM file this data relates to\\n- checks retrieved data correlates with expected BAM\\n- additionally can correct read_group_id if other fields correlate when\\nclashes occur."
    local_path: "file path for XML from GNOS."
    man: "Full documentation."
    version: "Prints the version number."
  }
  output {
    File out_stdout = stdout()
    File out_name_file_defaults = "${in_name_file_defaults}"
  }
}