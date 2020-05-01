version 1.0

task Gdalsrsinfo {
  input {
    String? srsSrsDef
  }
  command <<<
    gdalsrsinfo \
      ~{srsSrsDef}
  >>>
}