version 1.0

task Gapc {
  input {
    Boolean nN
    Boolean iI
    Boolean pP
    Boolean oO
    String classClassName
    Boolean eE
    String tabTab
    Boolean tT
    Boolean tabTabAll
    Boolean cyCyK
    Boolean backtraceBacktrace
    Boolean kKBacktrace
    Boolean subSubOptClassify
    Boolean subSubOpt
    Boolean sampleSample
    Boolean noNoCoOpt
    Boolean noNoCoOptClass
    Boolean wW
    Boolean kKBest
    Boolean ambiguityAmbiguity
    Boolean specializeSpecializeGrammar
    Boolean verboseVerbose
    Boolean lL
    Boolean iI
    Boolean vV
    Boolean pP
    Boolean multiMultiDimPareto
    Boolean cC
    Boolean fF
    Boolean sS
    String stepStepMode
  }
  command <<<
    gapc \
      ~{true="-n" false="" nN} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{if defined(classClassName) then ("--class-name " +  '"' + classClassName + '"') else ""} \
      ~{true="-E" false="" eE} \
      ~{if defined(tabTab) then ("--tab " +  '"' + tabTab + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="--tab-all" false="" tabTabAll} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--backtrace" false="" backtraceBacktrace} \
      ~{true="--kbacktrace" false="" kKBacktrace} \
      ~{true="--subopt-classify" false="" subSubOptClassify} \
      ~{true="--subopt" false="" subSubOpt} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--no-coopt" false="" noNoCoOpt} \
      ~{true="--no-coopt-class" false="" noNoCoOptClass} \
      ~{true="-w" false="" wW} \
      ~{true="--kbest" false="" kKBest} \
      ~{true="--ambiguity" false="" ambiguityAmbiguity} \
      ~{true="--specialize_grammar" false="" specializeSpecializeGrammar} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-l" false="" lL} \
      ~{true="-I" false="" iI} \
      ~{true="-v" false="" vV} \
      ~{true="-P" false="" pP} \
      ~{true="--multi-dim-pareto" false="" multiMultiDimPareto} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-S" false="" sS} \
      ~{if defined(stepStepMode) then ("--step-mode " +  '"' + stepStepMode + '"') else ""}
  >>>
}