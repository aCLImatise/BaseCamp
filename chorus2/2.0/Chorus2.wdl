version 1.0

task Chorus2 {
  input {
    String jellyfishJellyfish
    String bwaBwa
    String genomeGenome
    String inputInput
    String saveSave
    String primerPrimer
    String threadsThreads
    Int lengthLength
    String homologyHomology
    String dtmDtm
    String stepStep
    String dockerDocker
    String ploidyPloidy
    Boolean jJ
  }
  command <<<
    Chorus2 \
      ~{if defined(jellyfishJellyfish) then ("--jellyfish " +  '"' + jellyfishJellyfish + '"') else ""} \
      ~{if defined(bwaBwa) then ("--bwa " +  '"' + bwaBwa + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(saveSave) then ("--save " +  '"' + saveSave + '"') else ""} \
      ~{if defined(primerPrimer) then ("--primer " +  '"' + primerPrimer + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(homologyHomology) then ("--homology " +  '"' + homologyHomology + '"') else ""} \
      ~{if defined(dtmDtm) then ("--dtm " +  '"' + dtmDtm + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(dockerDocker) then ("--docker " +  '"' + dockerDocker + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="-j" false="" jJ}
  >>>
}