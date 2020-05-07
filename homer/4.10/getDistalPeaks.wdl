version 1.0

task GetDistalPeaks.pl {
  input {
    Boolean dD
    Boolean proxProx
    Boolean intergenicIntergenic
    Boolean intragenicIntragenic
    Boolean nottsNotts
    String gtfGtf
    Boolean gidGid
    Boolean targetsTargets
  }
  command <<<
    getDistalPeaks.pl \
      ~{true="-d" false="" dD} \
      ~{true="-prox" false="" proxProx} \
      ~{true="-intergenic" false="" intergenicIntergenic} \
      ~{true="-intragenic" false="" intragenicIntragenic} \
      ~{true="-noTTS" false="" nottsNotts} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{true="-gid" false="" gidGid} \
      ~{true="-targets" false="" targetsTargets}
  >>>
}