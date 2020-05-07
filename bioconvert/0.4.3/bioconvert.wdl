version 1.0

task Bioconvert {
  input {
    String verbosityVerbosity
    String levelLevel
    Boolean dependencyDependencyReport
    Boolean allowAllowIndirectConversion
    Boolean conversionConversionGraph
  }
  command <<<
    bioconvert \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{true="--dependency-report" false="" dependencyDependencyReport} \
      ~{true="--allow-indirect-conversion" false="" allowAllowIndirectConversion} \
      ~{true="--conversion-graph" false="" conversionConversionGraph}
  >>>
}