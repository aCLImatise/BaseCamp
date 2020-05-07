version 1.0

task FastqScreen {
  input {
    String addAddGenome
    String alignerAligner
    Boolean bisulfiteBisulfite
    String bowtieBowtie
    String bowtie2Bowtie2
    String bwaBwa
    File confConf
    String filterFilter
    Boolean forceForce
    Boolean getGetGenomes
    Boolean illuminaIllumina13
    Boolean inverseInverse
    Boolean noNoHits
    String outdirOutdir
    Int passPass
    Boolean quietQuiet
    Int subsetSubset
  }
  command <<<
    fastq_screen \
      ~{if defined(addAddGenome) then ("--add_genome " +  '"' + addAddGenome + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--bisulfite" false="" bisulfiteBisulfite} \
      ~{if defined(bowtieBowtie) then ("--bowtie " +  '"' + bowtieBowtie + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(bwaBwa) then ("--bwa " +  '"' + bwaBwa + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--get_genomes" false="" getGetGenomes} \
      ~{true="--illumina1_3" false="" illuminaIllumina13} \
      ~{true="--inverse" false="" inverseInverse} \
      ~{true="--nohits" false="" noNoHits} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(passPass) then ("--pass " +  '"' + passPass + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""}
  >>>
}