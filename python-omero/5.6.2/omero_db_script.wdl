version 1.0

task OmeroDbScript {
  input {
    File fileFile
    String patchPatch
    String passwordPassword
    Boolean noNoSalt
    String? posPosVersion
    String? posPosPatch
    String? posPosPassword
  }
  command <<<
    omero db script \
      ~{posPosVersion} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(patchPatch) then ("--patch " +  '"' + patchPatch + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--no-salt" false="" noNoSalt} \
      ~{posPosPatch} \
      ~{posPosPassword}
  >>>
}