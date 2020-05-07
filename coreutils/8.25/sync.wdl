version 1.0

task Sync {
  input {
    Boolean dataData
    Boolean fileFileSystem
  }
  command <<<
    sync \
      ~{true="--data" false="" dataData} \
      ~{true="--file-system" false="" fileFileSystem}
  >>>
}