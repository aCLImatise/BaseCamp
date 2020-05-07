version 1.0

task GfPcr {
  input {
    String nameName
    String? hostHost
    String? portPort
    String? seqSeqDir
    String? fFPrimer
    String? rRPrimer
    String? outputOutput
  }
  command <<<
    gfPcr \
      ~{hostHost} \
      ~{if defined(nameName) then ("- Name " +  '"' + nameName + '"') else ""} \
      ~{portPort} \
      ~{seqSeqDir} \
      ~{fFPrimer} \
      ~{rRPrimer} \
      ~{outputOutput}
  >>>
}