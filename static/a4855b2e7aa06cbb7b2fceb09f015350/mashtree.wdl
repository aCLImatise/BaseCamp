version 1.0

task Mashtree {
  input {
    Boolean genomeGenomeSize
    Boolean minMinDepth
    Boolean kmKmErLength
    Boolean sketchSketchSize
    Boolean seedSeed
    Boolean saveSaveSketches
  }
  command <<<
    mashtree \
      ~{true="--genomesize" false="" genomeGenomeSize} \
      ~{true="--mindepth" false="" minMinDepth} \
      ~{true="--kmerlength" false="" kmKmErLength} \
      ~{true="--sketch-size" false="" sketchSketchSize} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--save-sketches" false="" saveSaveSketches}
  >>>
}