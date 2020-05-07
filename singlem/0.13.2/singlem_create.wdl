version 1.0

task SinglemCreate {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Boolean fullFullHelp
    File inputInputGraftMPackage
    File outputOutputSingleMPackage
    Int hmmHmmPosition
    Int windowWindowSize
    Boolean forceForce
  }
  command <<<
    singlem create \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--full_help" false="" fullFullHelp} \
      ~{if defined(inputInputGraftMPackage) then ("--input_graftm_package " +  '"' + inputInputGraftMPackage + '"') else ""} \
      ~{if defined(outputOutputSingleMPackage) then ("--output_singlem_package " +  '"' + outputOutputSingleMPackage + '"') else ""} \
      ~{if defined(hmmHmmPosition) then ("--hmm_position " +  '"' + hmmHmmPosition + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}