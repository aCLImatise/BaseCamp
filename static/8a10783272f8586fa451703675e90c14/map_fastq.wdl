version 1.0

task MapFastq.pl {
  input {
    Boolean pP
    File xX
    Boolean pePe
    Boolean suffixSuffix
    Boolean bowtie2Bowtie2
    Boolean bowtieBowtie
    Boolean bwaBwa
    Boolean hisat2Hisat2
    Boolean starStar
    Boolean unUn
    Boolean bamBam
    Boolean localLocal
    Boolean fF
    Boolean passPass
    Boolean showShowErrors
  }
  command <<<
    map-fastq.pl \
      ~{true="-p" false="" pP} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-pe" false="" pePe} \
      ~{true="-suffix" false="" suffixSuffix} \
      ~{true="-bowtie2" false="" bowtie2Bowtie2} \
      ~{true="-bowtie" false="" bowtieBowtie} \
      ~{true="-bwa" false="" bwaBwa} \
      ~{true="-hisat2" false="" hisat2Hisat2} \
      ~{true="-star" false="" starStar} \
      ~{true="-un" false="" unUn} \
      ~{true="-bam" false="" bamBam} \
      ~{true="--local" false="" localLocal} \
      ~{true="-f" false="" fF} \
      ~{true="-pass" false="" passPass} \
      ~{true="-showErrors" false="" showShowErrors}
  >>>
}