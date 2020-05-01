version 1.0

task Kmasker {
  input {
    Boolean showShowRepository
    Boolean showShowDetails
    Boolean showShowPath
    Boolean removeRemoveKIndex
    Boolean setSetPrivatePath
    Boolean setSetExternalPath
    Boolean expertExpertSettingKmAsker
    Boolean expertExpertSettingJelly
    Boolean expertExpertSettingBlast
    Boolean threadsThreads
    Boolean bedBed
    Boolean userUserConf
    Boolean globalGlobalConf
    Boolean checkCheckInstall
    Boolean setidSetid
    Boolean longLongId
    Boolean tempTemp
    Boolean verboseVerbose
    Boolean makeMakeModel
  }
  command <<<
    Kmasker \
      ~{true="--show_repository" false="" showShowRepository} \
      ~{true="--show_details" false="" showShowDetails} \
      ~{true="--show_path" false="" showShowPath} \
      ~{true="--remove_kindex" false="" removeRemoveKIndex} \
      ~{true="--set_private_path" false="" setSetPrivatePath} \
      ~{true="--set_external_path" false="" setSetExternalPath} \
      ~{true="--expert_setting_kmasker" false="" expertExpertSettingKmAsker} \
      ~{true="--expert_setting_jelly" false="" expertExpertSettingJelly} \
      ~{true="--expert_setting_blast" false="" expertExpertSettingBlast} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--user_conf" false="" userUserConf} \
      ~{true="--global_conf" false="" globalGlobalConf} \
      ~{true="--check_install" false="" checkCheckInstall} \
      ~{true="--setid" false="" setidSetid} \
      ~{true="--long_id" false="" longLongId} \
      ~{true="--temp" false="" tempTemp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_model" false="" makeMakeModel}
  >>>
}