version 1.0

task RsemPrepareReference {
  input {
    File gtfGtf
    File gff3Gff3
    String gff3Gff3RnaPatterns
    Boolean gff3Gff3GenesAsTranscripts
    String trustedTrustedSources
    File transcriptTranscriptToGeneMap
    File alleleAlleleToGeneMap
    Boolean polyaPolya
    Int polyaPolyaLength
    File noNoPolyaSubset
    Boolean bowtieBowtie
    File bowtieBowtiePath
    Boolean bowtie2Bowtie2
    File bowtie2Bowtie2Path
    Boolean starStar
    File starStarPath
    Int starStarSjDbOverhang
    Boolean hisat2Hisat2Hca
    File hisat2Hisat2Path
    Boolean pP
    Boolean qQ
    Boolean prepPrepPrSem
    String mappMappAbilityBigwigFile
  }
  command <<<
    rsem-prepare-reference \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(gff3Gff3) then ("--gff3 " +  '"' + gff3Gff3 + '"') else ""} \
      ~{if defined(gff3Gff3RnaPatterns) then ("--gff3-RNA-patterns " +  '"' + gff3Gff3RnaPatterns + '"') else ""} \
      ~{true="--gff3-genes-as-transcripts" false="" gff3Gff3GenesAsTranscripts} \
      ~{if defined(trustedTrustedSources) then ("--trusted-sources " +  '"' + trustedTrustedSources + '"') else ""} \
      ~{if defined(transcriptTranscriptToGeneMap) then ("--transcript-to-gene-map " +  '"' + transcriptTranscriptToGeneMap + '"') else ""} \
      ~{if defined(alleleAlleleToGeneMap) then ("--allele-to-gene-map " +  '"' + alleleAlleleToGeneMap + '"') else ""} \
      ~{true="--polyA" false="" polyaPolya} \
      ~{if defined(polyaPolyaLength) then ("--polyA-length " +  '"' + polyaPolyaLength + '"') else ""} \
      ~{if defined(noNoPolyaSubset) then ("--no-polyA-subset " +  '"' + noNoPolyaSubset + '"') else ""} \
      ~{true="--bowtie" false="" bowtieBowtie} \
      ~{if defined(bowtieBowtiePath) then ("--bowtie-path " +  '"' + bowtieBowtiePath + '"') else ""} \
      ~{true="--bowtie2" false="" bowtie2Bowtie2} \
      ~{if defined(bowtie2Bowtie2Path) then ("--bowtie2-path " +  '"' + bowtie2Bowtie2Path + '"') else ""} \
      ~{true="--star" false="" starStar} \
      ~{if defined(starStarPath) then ("--star-path " +  '"' + starStarPath + '"') else ""} \
      ~{if defined(starStarSjDbOverhang) then ("--star-sjdboverhang " +  '"' + starStarSjDbOverhang + '"') else ""} \
      ~{true="--hisat2-hca" false="" hisat2Hisat2Hca} \
      ~{if defined(hisat2Hisat2Path) then ("--hisat2-path " +  '"' + hisat2Hisat2Path + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="--prep-pRSEM" false="" prepPrepPrSem} \
      ~{if defined(mappMappAbilityBigwigFile) then ("--mappability-bigwig-file " +  '"' + mappMappAbilityBigwigFile + '"') else ""}
  >>>
}