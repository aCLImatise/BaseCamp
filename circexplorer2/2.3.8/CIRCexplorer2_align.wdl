version 1.0

task CIRCexplorer2Align {
  input {
    String gtfGtf
    String genomeGenome
    String bowtie1Bowtie1
    String bowtie2Bowtie2
    String threadThread
    String fastFastQ
    String outputOutput
    String bedBed
    Boolean bwBw
    Boolean scaleScale
    Boolean skipSkipTopHat
    Boolean skipSkipTopHatFusion
  }
  command <<<
    CIRCexplorer2 align \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(bowtie1Bowtie1) then ("--bowtie1 " +  '"' + bowtie1Bowtie1 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--bw" false="" bwBw} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--skip-tophat" false="" skipSkipTopHat} \
      ~{true="--skip-tophat-fusion" false="" skipSkipTopHatFusion}
  >>>
}