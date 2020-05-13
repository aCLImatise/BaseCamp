version 1.0

task Popera {
  input {
    String dataData
    String nameName
    String bandwidthBandwidth
    String thresholdThreshold
    Int minlengthMinlength
    String threadsThreads
    Boolean bigwigBigwig
    String excludeExcludeChr
  }
  command <<<
    popera \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(bandwidthBandwidth) then ("--bandwidth " +  '"' + bandwidthBandwidth + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--bigwig" false="" bigwigBigwig} \
      ~{if defined(excludeExcludeChr) then ("--excludechr " +  '"' + excludeExcludeChr + '"') else ""}
  >>>
}