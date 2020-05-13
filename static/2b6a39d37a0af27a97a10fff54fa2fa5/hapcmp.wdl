version 1.0

task Hapcmp {
  input {
    String inputInputRegions
    String inputInputVCfs
    Boolean bB
    Boolean eE
    Boolean dD
    Boolean rR
    Boolean nN
    String outputOutputSequences
    String progressProgress
    String progressProgressSeconds
    Boolean lL
    Boolean fF
    String doDoAlignment
  }
  command <<<
    hapcmp \
      ~{if defined(inputInputRegions) then ("--input-regions " +  '"' + inputInputRegions + '"') else ""} \
      ~{if defined(inputInputVCfs) then ("--input-vcfs " +  '"' + inputInputVCfs + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-e" false="" eE} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-n" false="" nN} \
      ~{if defined(outputOutputSequences) then ("--output-sequences " +  '"' + outputOutputSequences + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(progressProgressSeconds) then ("--progress-seconds " +  '"' + progressProgressSeconds + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{if defined(doDoAlignment) then ("--do-alignment " +  '"' + doDoAlignment + '"') else ""}
  >>>
}