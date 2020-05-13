version 1.0

task PrintQiimeConfig.py {
  input {
    Boolean verboseVerbose
    Boolean testTest
    Boolean qQIiMeFullInstall
  }
  command <<<
    print_qiime_config.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--test" false="" testTest} \
      ~{true="--qiime_full_install" false="" qQIiMeFullInstall}
  >>>
}