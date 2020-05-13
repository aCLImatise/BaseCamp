version 1.0

task PhyloBoot {
  input {
    Boolean nNReps
    Boolean nNReps
    String readReadMods
    String outputOutputAverage
    Boolean quietQuiet
    String inInItModel
    Boolean inInItRandom
    String scaleScale
    String subtreeSubtree
    String subtreeSubtreeScale
    String subtreeSubtreeSwitch
    File scaleScaleFile
  }
  command <<<
    phyloBoot \
      ~{true="--nreps" false="" nNReps} \
      ~{true="--nreps" false="" nNReps} \
      ~{if defined(readReadMods) then ("--read-mods " +  '"' + readReadMods + '"') else ""} \
      ~{if defined(outputOutputAverage) then ("--output-average " +  '"' + outputOutputAverage + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(inInItModel) then ("--init-model " +  '"' + inInItModel + '"') else ""} \
      ~{true="--init-random" false="" inInItRandom} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(subtreeSubtree) then ("--subtree " +  '"' + subtreeSubtree + '"') else ""} \
      ~{if defined(subtreeSubtreeScale) then ("--subtree-scale " +  '"' + subtreeSubtreeScale + '"') else ""} \
      ~{if defined(subtreeSubtreeSwitch) then ("--subtree-switch " +  '"' + subtreeSubtreeSwitch + '"') else ""} \
      ~{if defined(scaleScaleFile) then ("--scale-file " +  '"' + scaleScaleFile + '"') else ""}
  >>>
}