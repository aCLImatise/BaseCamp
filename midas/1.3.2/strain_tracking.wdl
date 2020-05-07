version 1.0

task StrainTracking.pyTrackMarkers {
  input {
    File inInDir
    File outOut
    File markersMarkers
    Float minMinFreq
    Int minMinReads
    Int maxMaxSites
    Int maxMaxSamples
  }
  command <<<
    strain_tracking.py track_markers \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(markersMarkers) then ("--markers " +  '"' + markersMarkers + '"') else ""} \
      ~{if defined(minMinFreq) then ("--min_freq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(maxMaxSites) then ("--max_sites " +  '"' + maxMaxSites + '"') else ""} \
      ~{if defined(maxMaxSamples) then ("--max_samples " +  '"' + maxMaxSamples + '"') else ""}
  >>>
}