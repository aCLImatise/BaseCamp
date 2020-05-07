version 1.0

task OptimirProcess {
  input {
    String fqFq
    String dirDirOutput
    String vcfVcf
    String seedSeedLen
    String w5W5
    String scoreScoreThresh
    String consistentConsistentRate
    Boolean rmRmTempFiles
    String anAnNot
    Boolean gffGffOut
    Boolean vcfVcfOut
    String adapt3Adapt3
    String adapt5Adapt5
    String reReAdmin
    String readReadMax
    String bqBqThresh
    Boolean trimTrimAgain
    String maturesMaturesFastA
    String hairpinsHairpinsFastA
    String gff3Gff3
    Boolean quietQuiet
    String cutCutAdapt
    String bowtie2Bowtie2
    String bowtie2Bowtie2Build
    String samSamTools
  }
  command <<<
    optimir process \
      ~{if defined(fqFq) then ("--fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(dirDirOutput) then ("--dirOutput " +  '"' + dirDirOutput + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(seedSeedLen) then ("--seedLen " +  '"' + seedSeedLen + '"') else ""} \
      ~{if defined(w5W5) then ("--w5 " +  '"' + w5W5 + '"') else ""} \
      ~{if defined(scoreScoreThresh) then ("--scoreThresh " +  '"' + scoreScoreThresh + '"') else ""} \
      ~{if defined(consistentConsistentRate) then ("--consistentRate " +  '"' + consistentConsistentRate + '"') else ""} \
      ~{true="--rmTempFiles" false="" rmRmTempFiles} \
      ~{if defined(anAnNot) then ("--annot " +  '"' + anAnNot + '"') else ""} \
      ~{true="--gff_out" false="" gffGffOut} \
      ~{true="--vcf_out" false="" vcfVcfOut} \
      ~{if defined(adapt3Adapt3) then ("--adapt3 " +  '"' + adapt3Adapt3 + '"') else ""} \
      ~{if defined(adapt5Adapt5) then ("--adapt5 " +  '"' + adapt5Adapt5 + '"') else ""} \
      ~{if defined(reReAdmin) then ("--readMin " +  '"' + reReAdmin + '"') else ""} \
      ~{if defined(readReadMax) then ("--readMax " +  '"' + readReadMax + '"') else ""} \
      ~{if defined(bqBqThresh) then ("--bqThresh " +  '"' + bqBqThresh + '"') else ""} \
      ~{true="--trimAgain" false="" trimTrimAgain} \
      ~{if defined(maturesMaturesFastA) then ("--maturesFasta " +  '"' + maturesMaturesFastA + '"') else ""} \
      ~{if defined(hairpinsHairpinsFastA) then ("--hairpinsFasta " +  '"' + hairpinsHairpinsFastA + '"') else ""} \
      ~{if defined(gff3Gff3) then ("--gff3 " +  '"' + gff3Gff3 + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(cutCutAdapt) then ("--cutadapt " +  '"' + cutCutAdapt + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Build) then ("--bowtie2_build " +  '"' + bowtie2Bowtie2Build + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""}
  >>>
}