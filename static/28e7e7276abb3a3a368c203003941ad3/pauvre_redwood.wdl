version 1.0

task PauvreRedwood {
  input {
    Boolean quietQuiet
    String dD
    String dpiDpi
    Array[String]+ fileFileForm
    String gffGff
    Boolean interlaceInterlace
    Boolean invertInvert
    Boolean logLog
    String mainMainBam
    Boolean noNoTimestamp
    String outputOutputBaseName
    Array[String]+ queryQuery
    String rnaseRnaseQBam
    String smallSmallStart
    String sortSort
    Array[String]+ ticksTicks
    Boolean transparentTransparent
  }
  command <<<
    pauvre redwood \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fileFileForm) then ("--fileform " +  '"' + fileFileForm + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{true="--interlace" false="" interlaceInterlace} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--log" false="" logLog} \
      ~{if defined(mainMainBam) then ("--main_bam " +  '"' + mainMainBam + '"') else ""} \
      ~{true="--no_timestamp" false="" noNoTimestamp} \
      ~{if defined(outputOutputBaseName) then ("--output-base-name " +  '"' + outputOutputBaseName + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(rnaseRnaseQBam) then ("--rnaseq_bam " +  '"' + rnaseRnaseQBam + '"') else ""} \
      ~{if defined(smallSmallStart) then ("--small_start " +  '"' + smallSmallStart + '"') else ""} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{if defined(ticksTicks) then ("--ticks " +  '"' + ticksTicks + '"') else ""} \
      ~{true="--transparent" false="" transparentTransparent}
  >>>
}