version 1.0

task BuildDatabase {
  input {
    String nameName
    String engineEngine
    Directory dirDir
    File batchBatch
    String? orOr
    String? orOr
  }
  command <<<
    BuildDatabase \
      ~{orOr} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(engineEngine) then ("-engine " +  '"' + engineEngine + '"') else ""} \
      ~{if defined(dirDir) then ("-dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(batchBatch) then ("-batch " +  '"' + batchBatch + '"') else ""} \
      ~{orOr}
  >>>
}