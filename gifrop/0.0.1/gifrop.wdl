version 1.0

task Gifrop {
  input {
    Boolean threadsThreads
    Boolean noNoPlots
    Boolean minMinGenes
    Boolean flankFlankDna
    Boolean getGetIslands
  }
  command <<<
    gifrop \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--no_plots" false="" noNoPlots} \
      ~{true="--min_genes" false="" minMinGenes} \
      ~{true="--flank_dna" false="" flankFlankDna} \
      ~{true="--get_islands" false="" getGetIslands}
  >>>
}