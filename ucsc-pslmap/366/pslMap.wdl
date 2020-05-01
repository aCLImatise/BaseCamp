version 1.0

task PslMap {
  input {
    String verboseVerbose
    String? inInPsl
    String? mapMapFile
    String? outOutPsl
  }
  command <<<
    pslMap \
      ~{inInPsl} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{mapMapFile} \
      ~{outOutPsl}
  >>>
}