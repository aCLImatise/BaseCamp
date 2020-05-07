version 1.0

task Ecotaxstat {
  input {
    Boolean debugDebug
    Boolean withoutWithoutProgressBar
    File ecoEcoPcrDb
    String requiredRequired
  }
  command <<<
    ecotaxstat \
      ~{true="--DEBUG" false="" debugDebug} \
      ~{true="--without-progress-bar" false="" withoutWithoutProgressBar} \
      ~{if defined(ecoEcoPcrDb) then ("--ecopcrdb " +  '"' + ecoEcoPcrDb + '"') else ""} \
      ~{if defined(requiredRequired) then ("--required " +  '"' + requiredRequired + '"') else ""}
  >>>
}