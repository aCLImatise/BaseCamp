version 1.0

task MimoddVcfFilter {
  input {
    String ofileOfile
    Array[String]+ samplesSamples
    Array[String]+ gtGt
    Array[String]+ dpDp
    Array[String]+ gqGq
    String afAf
    Boolean rR
    Boolean noNoIndels
    Boolean indelsIndelsOnly
    Array[String]+ vVFilter
    String? inputInputFile
  }
  command <<<
    mimodd vcf-filter \
      ~{inputInputFile} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(gtGt) then ("--gt " +  '"' + gtGt + '"') else ""} \
      ~{if defined(dpDp) then ("--dp " +  '"' + dpDp + '"') else ""} \
      ~{if defined(gqGq) then ("--gq " +  '"' + gqGq + '"') else ""} \
      ~{if defined(afAf) then ("--af " +  '"' + afAf + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="--no-indels" false="" noNoIndels} \
      ~{true="--indels-only" false="" indelsIndelsOnly} \
      ~{if defined(vVFilter) then ("--vfilter " +  '"' + vVFilter + '"') else ""}
  >>>
}