version 1.0

task OptimirLibprep {
  input {
    String vcfVcf
    String maturesMaturesFastA
    String hairpinsHairpinsFastA
    String gff3Gff3
    String dirDirOutput
    String bowtie2Bowtie2Build
  }
  command <<<
    optimir libprep \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(maturesMaturesFastA) then ("--maturesFasta " +  '"' + maturesMaturesFastA + '"') else ""} \
      ~{if defined(hairpinsHairpinsFastA) then ("--hairpinsFasta " +  '"' + hairpinsHairpinsFastA + '"') else ""} \
      ~{if defined(gff3Gff3) then ("--gff3 " +  '"' + gff3Gff3 + '"') else ""} \
      ~{if defined(dirDirOutput) then ("--dirOutput " +  '"' + dirDirOutput + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Build) then ("--bowtie2_build " +  '"' + bowtie2Bowtie2Build + '"') else ""}
  >>>
}