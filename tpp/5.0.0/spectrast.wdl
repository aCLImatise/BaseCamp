version 1.0

task Spectrast {
  input {
    Boolean? verbose_mode
    Boolean? quiet_mode
    Boolean? file_specify_name_log
    Boolean? file_specify_name_userdefined
    File filename_one
    File? filename_n
  }
  command <<<
    spectrast \
      ~{filename_one} \
      ~{filename_n} \
      ~{true="-V" false="" verbose_mode} \
      ~{true="-Q" false="" quiet_mode} \
      ~{true="-L" false="" file_specify_name_log} \
      ~{true="-M" false="" file_specify_name_userdefined}
  >>>
  parameter_meta {
    verbose_mode: "Verbose mode."
    quiet_mode: "Quiet mode."
    file_specify_name_log: "<file>     Specify name of log file. Default is \"spectrast.log\"."
    file_specify_name_userdefined: "<file>     Specify name of user-defined modifications file. Default is \"spectrast.usermods\"."
    filename_one: ""
    filename_n: ""
  }
}