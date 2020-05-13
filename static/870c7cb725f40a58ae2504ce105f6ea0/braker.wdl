version 1.0

task Braker.pl {
  input {
    String genomeGenome
    String bamBam
    Boolean skipSkipGenemarkEt
    Boolean skipSkipOptimize
    Boolean softSoftMasking
    String speciesSpecies
    Boolean useUseExisting
    Boolean utrUtr
    Boolean workingWorkingDir
    Boolean filterFilterOutShort
  }
  command <<<
    braker.pl \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{true="--skipGeneMark-ET" false="" skipSkipGenemarkEt} \
      ~{true="--skipOptimize" false="" skipSkipOptimize} \
      ~{true="--softmasking" false="" softSoftMasking} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="--useexisting" false="" useUseExisting} \
      ~{true="--UTR" false="" utrUtr} \
      ~{true="--workingdir" false="" workingWorkingDir} \
      ~{true="--filterOutShort" false="" filterFilterOutShort}
  >>>
}