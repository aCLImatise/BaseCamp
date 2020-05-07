version 1.0

task OrthomclInstallSchema {
  input {
    String? configConfigFile
    String? sqlSqlLogFile
    String? tableTableSuffix
  }
  command <<<
    orthomclInstallSchema \
      ~{configConfigFile} \
      ~{sqlSqlLogFile} \
      ~{tableTableSuffix}
  >>>
}