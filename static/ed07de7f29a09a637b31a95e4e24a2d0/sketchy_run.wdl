version 1.0

task SketchyRun {
  input {
    File fastFastQ
    File sketchSketch
    Int ranksRanks
    File outdirOutdir
    String prefixPrefix
    Int limitLimit
    String palettePalette
    Int stableStable
    Int threadsThreads
    File homeHome
    Boolean quietQuiet
  }
  command <<<
    sketchy run \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(sketchSketch) then ("--sketch " +  '"' + sketchSketch + '"') else ""} \
      ~{if defined(ranksRanks) then ("--ranks " +  '"' + ranksRanks + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(stableStable) then ("--stable " +  '"' + stableStable + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(homeHome) then ("--home " +  '"' + homeHome + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}