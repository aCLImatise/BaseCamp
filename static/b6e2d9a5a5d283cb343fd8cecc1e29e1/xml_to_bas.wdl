version 1.0

task XmlToBas.pl {
  input {
    Boolean? uri
    Boolean? name_output_stdout
    Boolean? bam
    String? local_path
    Boolean? man
    Boolean? version
  }
  command <<<
    xml_to_bas.pl \
      ~{true="-uri" false="" uri} \
      ~{true="-output" false="" name_output_stdout} \
      ~{true="-bam" false="" bam} \
      ~{if defined(local_path) then ("-local-path " +  '"' + local_path + '"') else ""} \
      ~{true="-man" false="" man} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    uri: "-d    Same URI used by gtdownload"
    name_output_stdout: "-o    Name for output file. Defaults to STDOUT."
    bam: "-b  BAM|CRAM file this data relates to - checks retrieved data correlates with expected BAM - additionally can correct read_group_id if other fields correlate when clashes occur."
    local_path: "file path for XML from GNOS."
    man: "-m   Full documentation."
    version: "Prints the version number."
  }
}