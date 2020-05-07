version 1.0

task RunRoh.pl {
  input {
    File afAfAnNotS
    String inInDir
    String includeInclude
    String excludeExclude
    String minMinLength
    String genGenMap
    Float recRecRate
    String minMinMarkers
    String outdirOutdir
    String minMinQual
    String rohRohArgs
    Boolean silentSilent
    String? optionsOptions
  }
  command <<<
    run-roh.pl \
      ~{optionsOptions} \
      ~{if defined(afAfAnNotS) then ("--af-annots " +  '"' + afAfAnNotS + '"') else ""} \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(genGenMap) then ("--genmap " +  '"' + genGenMap + '"') else ""} \
      ~{if defined(recRecRate) then ("--rec-rate " +  '"' + recRecRate + '"') else ""} \
      ~{if defined(minMinMarkers) then ("--min-markers " +  '"' + minMinMarkers + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(rohRohArgs) then ("--roh-args " +  '"' + rohRohArgs + '"') else ""} \
      ~{true="--silent" false="" silentSilent}
  >>>
}