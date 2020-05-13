version 1.0

task IridaUploader {
  input {
    Directory directoryDirectory
    String configConfig
    Boolean forceForce
    Boolean batchBatch
    Boolean ciCi
    Boolean csCs
    Boolean cuCu
    Boolean cpCp
    Boolean cbCb
    Boolean crCr
  }
  command <<<
    irida-uploader \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="-ci" false="" ciCi} \
      ~{true="-cs" false="" csCs} \
      ~{true="-cu" false="" cuCu} \
      ~{true="-cp" false="" cpCp} \
      ~{true="-cb" false="" cbCb} \
      ~{true="-cr" false="" crCr}
  >>>
}