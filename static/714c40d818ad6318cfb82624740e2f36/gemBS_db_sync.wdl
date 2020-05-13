version 1.0

task GemBSDbSync {
  input {
    Boolean yesYes
  }
  command <<<
    gemBS db-sync \
      ~{true="--yes" false="" yesYes}
  >>>
}