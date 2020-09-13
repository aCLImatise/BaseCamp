version 1.0

task XmlToBaspl {
  input {
    Boolean? uri
    File? name_output_file
    Boolean? bam
    File? local_path
    Boolean? man
    Boolean? version
  }
  command <<<
    xml_to_bas_pl \
      ~{if (uri) then "-uri" else ""} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if defined(local_path) then ("-local-path " +  '"' + local_path + '"') else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    uri: "-d    Same URI used by gtdownload"
    name_output_file: "-o    Name for output file. Defaults to STDOUT."
    bam: "-b  BAM|CRAM file this data relates to\\n- checks retrieved data correlates with expected BAM\\n- additionally can correct read_group_id if other fields correlate when\\nclashes occur."
    local_path: "file path for XML from GNOS."
    man: "-m   Full documentation."
    version: "Prints the version number."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}