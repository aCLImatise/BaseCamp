version 1.0

task UnicyclerPolish {
  input {
    String assemblyAssembly
    Array[String]+ pbPbBax
    String pbPbBam
    String pbPbFastA
    String longLongReads
    Boolean noNoFixLocal
    Int minMinInsert
    Int maxMaxInsert
    Int minMinAlignLength
    String homopolymerHomopolymer
    String largeLarge
    String illuminaIlluminaAlt
    String freeFreeBayesQualCutOff
    String threadsThreads
    String verbosityVerbosity
    String samSamTools
    String bowtie2Bowtie2
    Int minimap2Minimap2
    String freeFreeBayes
    String pitchforkPitchfork
    String bax2bamBax2bam
    String pbPbAlign
    String arrowArrow
    String pilonPilon
    String javaJava
    String aleAle
    String racRacOn
    Int minimapMinimap
    String nucNucMer
    String showsShowsNps
  }
  command <<<
    unicycler_polish \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(pbPbBax) then ("--pb_bax " +  '"' + pbPbBax + '"') else ""} \
      ~{if defined(pbPbBam) then ("--pb_bam " +  '"' + pbPbBam + '"') else ""} \
      ~{if defined(pbPbFastA) then ("--pb_fasta " +  '"' + pbPbFastA + '"') else ""} \
      ~{if defined(longLongReads) then ("--long_reads " +  '"' + longLongReads + '"') else ""} \
      ~{true="--no_fix_local" false="" noNoFixLocal} \
      ~{if defined(minMinInsert) then ("--min_insert " +  '"' + minMinInsert + '"') else ""} \
      ~{if defined(maxMaxInsert) then ("--max_insert " +  '"' + maxMaxInsert + '"') else ""} \
      ~{if defined(minMinAlignLength) then ("--min_align_length " +  '"' + minMinAlignLength + '"') else ""} \
      ~{if defined(homopolymerHomopolymer) then ("--homopolymer " +  '"' + homopolymerHomopolymer + '"') else ""} \
      ~{if defined(largeLarge) then ("--large " +  '"' + largeLarge + '"') else ""} \
      ~{if defined(illuminaIlluminaAlt) then ("--illumina_alt " +  '"' + illuminaIlluminaAlt + '"') else ""} \
      ~{if defined(freeFreeBayesQualCutOff) then ("--freebayes_qual_cutoff " +  '"' + freeFreeBayesQualCutOff + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(minimap2Minimap2) then ("--minimap2 " +  '"' + minimap2Minimap2 + '"') else ""} \
      ~{if defined(freeFreeBayes) then ("--freebayes " +  '"' + freeFreeBayes + '"') else ""} \
      ~{if defined(pitchforkPitchfork) then ("--pitchfork " +  '"' + pitchforkPitchfork + '"') else ""} \
      ~{if defined(bax2bamBax2bam) then ("--bax2bam " +  '"' + bax2bamBax2bam + '"') else ""} \
      ~{if defined(pbPbAlign) then ("--pbalign " +  '"' + pbPbAlign + '"') else ""} \
      ~{if defined(arrowArrow) then ("--arrow " +  '"' + arrowArrow + '"') else ""} \
      ~{if defined(pilonPilon) then ("--pilon " +  '"' + pilonPilon + '"') else ""} \
      ~{if defined(javaJava) then ("--java " +  '"' + javaJava + '"') else ""} \
      ~{if defined(aleAle) then ("--ale " +  '"' + aleAle + '"') else ""} \
      ~{if defined(racRacOn) then ("--racon " +  '"' + racRacOn + '"') else ""} \
      ~{if defined(minimapMinimap) then ("--minimap " +  '"' + minimapMinimap + '"') else ""} \
      ~{if defined(nucNucMer) then ("--nucmer " +  '"' + nucNucMer + '"') else ""} \
      ~{if defined(showsShowsNps) then ("--showsnps " +  '"' + showsShowsNps + '"') else ""}
  >>>
}