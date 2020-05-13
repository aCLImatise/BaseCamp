version 1.0

task Kidc {
  input {
    Boolean forceForce
    Boolean sourceSource
    String stripStripDestDir
    String? optionsOptions
    File? fileFile
  }
  command <<<
    kidc \
      ~{optionsOptions} \
      ~{true="--force" false="" forceForce} \
      ~{true="--source" false="" sourceSource} \
      ~{if defined(stripStripDestDir) then ("--strip-dest-dir " +  '"' + stripStripDestDir + '"') else ""} \
      ~{fileFile}
  >>>
}