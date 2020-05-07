version 1.0

task AbyssGapfill {
  input {
    String minMinAlign
    Boolean verboseVerbose
  }
  command <<<
    abyss-gapfill \
      ~{if defined(minMinAlign) then ("--min-align " +  '"' + minMinAlign + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}