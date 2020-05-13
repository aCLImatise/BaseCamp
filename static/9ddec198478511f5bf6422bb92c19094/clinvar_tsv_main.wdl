version 1.0

task ClinvarTsvMain {
  input {
    String b37B37Path
    String b38B38Path
    String workWorkDir
    String coresCores
    Boolean debugDebug
  }
  command <<<
    clinvar_tsv main \
      ~{if defined(b37B37Path) then ("--b37-path " +  '"' + b37B37Path + '"') else ""} \
      ~{if defined(b38B38Path) then ("--b38-path " +  '"' + b38B38Path + '"') else ""} \
      ~{if defined(workWorkDir) then ("--work-dir " +  '"' + workWorkDir + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}