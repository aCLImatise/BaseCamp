version 1.0

task TargetDB {
  input {
    Boolean gG
    Boolean iI
    Boolean lL
    Boolean doDoAll
    Boolean sS
    Boolean verboseVerbose
    Boolean updateUpdate
    Boolean blastBlastCore
    Boolean updateUpdateConfig
    Boolean createCreateDb
  }
  command <<<
    target_DB \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="--do_all" false="" doDoAll} \
      ~{true="-s" false="" sS} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="-blastcore" false="" blastBlastCore} \
      ~{true="--update_config" false="" updateUpdateConfig} \
      ~{true="--create_db" false="" createCreateDb}
  >>>
}