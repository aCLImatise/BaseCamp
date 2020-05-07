version 1.0

task VtoolsAdmin {
  input {
    Boolean vV
    Boolean updateUpdateResource
    String mirrorMirrorRepository
    Boolean mergeMergeSamples
    Array[String]+ renameRenameSamples
    Boolean validateValidateBuild
    Boolean validateValidateSex
    String saveSaveSnapshot
    Boolean extraExtraFiles
    String loadLoadSnapshot
    Array[String]+ setSetRuntimeOption
    String resetResetRuntimeOption
    Boolean globalGlobal
    Array[String]+ fasta2crrFasta2crr
  }
  command <<<
    vtools admin \
      ~{true="-v" false="" vV} \
      ~{true="--update_resource" false="" updateUpdateResource} \
      ~{if defined(mirrorMirrorRepository) then ("--mirror_repository " +  '"' + mirrorMirrorRepository + '"') else ""} \
      ~{true="--merge_samples" false="" mergeMergeSamples} \
      ~{if defined(renameRenameSamples) then ("--rename_samples " +  '"' + renameRenameSamples + '"') else ""} \
      ~{true="--validate_build" false="" validateValidateBuild} \
      ~{true="--validate_sex" false="" validateValidateSex} \
      ~{if defined(saveSaveSnapshot) then ("--save_snapshot " +  '"' + saveSaveSnapshot + '"') else ""} \
      ~{true="--extra_files" false="" extraExtraFiles} \
      ~{if defined(loadLoadSnapshot) then ("--load_snapshot " +  '"' + loadLoadSnapshot + '"') else ""} \
      ~{if defined(setSetRuntimeOption) then ("--set_runtime_option " +  '"' + setSetRuntimeOption + '"') else ""} \
      ~{if defined(resetResetRuntimeOption) then ("--reset_runtime_option " +  '"' + resetResetRuntimeOption + '"') else ""} \
      ~{true="--global" false="" globalGlobal} \
      ~{if defined(fasta2crrFasta2crr) then ("--fasta2crr " +  '"' + fasta2crrFasta2crr + '"') else ""}
  >>>
}