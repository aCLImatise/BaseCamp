version 1.0

task OrthomclDropSchema {
  input {
    String? configConfigFile
    String? sqlSqlLogFile
  }
  command <<<
    orthomclDropSchema \
      ~{configConfigFile} \
      ~{sqlSqlLogFile}
  >>>
}