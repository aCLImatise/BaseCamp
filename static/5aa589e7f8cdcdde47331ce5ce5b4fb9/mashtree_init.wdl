version 1.0

task MashtreeInit.pl {
  input {
    Boolean genomeGenomeSize
    Boolean minMinDepth
    Boolean kmKmErLength
    Boolean sketchSketchSize
  }
  command <<<
    mashtree_init.pl \
      ~{true="--genomesize" false="" genomeGenomeSize} \
      ~{true="--mindepth" false="" minMinDepth} \
      ~{true="--kmerlength" false="" kmKmErLength} \
      ~{true="--sketch-size" false="" sketchSketchSize}
  >>>
}