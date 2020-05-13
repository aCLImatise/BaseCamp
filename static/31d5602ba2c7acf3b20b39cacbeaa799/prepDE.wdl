version 1.0

task PrepDE.py {
  input {
    String inputInput
    String gG
    String tT
    Int lengthLength
    String patternPattern
    Boolean clusterCluster
    String stringString
    String keyKey
    String legendLegend
  }
  command <<<
    prepDE.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{if defined(stringString) then ("--string " +  '"' + stringString + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(legendLegend) then ("--legend " +  '"' + legendLegend + '"') else ""}
  >>>
}