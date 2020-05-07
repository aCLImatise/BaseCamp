version 1.0

task Weave {
  input {
    String assemblyAssembly
    String readsReads
    String depthDepth
    Int lengthLength
    Array[String]+ telomereTelomere
    String windowWindowSize
    Boolean forceForceReadOutput
    Int minMinContigAlignment
    String outputOutput
    String coresCores
  }
  command <<<
    weave \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(telomereTelomere) then ("--telomere " +  '"' + telomereTelomere + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowsize " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--forcereadoutput" false="" forceForceReadOutput} \
      ~{if defined(minMinContigAlignment) then ("--mincontigalignment " +  '"' + minMinContigAlignment + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}