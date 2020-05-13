version 1.0

task SetupLogoData.py {
  input {
    Boolean allAll
  }
  command <<<
    setupLogoData.py \
      ~{true="--all" false="" allAll}
  >>>
}