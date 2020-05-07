version 1.0

task FilterBracken.out.py {
  input {
    String inputInputFile
    String outputOutputFile
    Boolean includeInclude
    Boolean excludeExclude
  }
  command <<<
    filter_bracken.out.py \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--include" false="" includeInclude} \
      ~{true="--exclude" false="" excludeExclude}
  >>>
}