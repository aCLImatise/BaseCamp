version 1.0

task Taeper {
  input {
    String inputInputDir
    String indexIndex
    String outputOutput
    String scaleScale
    String dumpDumpIndex
    Boolean noNoIndex
    Boolean logLogLevel
    Boolean noNoProgressBar
  }
  command <<<
    taeper \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(dumpDumpIndex) then ("--dump_index " +  '"' + dumpDumpIndex + '"') else ""} \
      ~{true="--no_index" false="" noNoIndex} \
      ~{true="--log_level" false="" logLogLevel} \
      ~{true="--no_progress_bar" false="" noNoProgressBar}
  >>>
}