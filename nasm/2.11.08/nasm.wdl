version 1.0

task Nasm {
  input {
    Boolean tT
    Boolean gG
    Boolean eE
    Boolean aA
    Boolean mM
    Boolean mgMg
    File mfMf
    File mdMd
    File mtMt
    File mqMq
    Boolean mpMp
    Boolean zZ
    Boolean sS
    String fF
    String oO
    String fF
    String lL
    Boolean iI
    Boolean oO
    Boolean pP
    Boolean dD
    Boolean uU
    Boolean xX
    Boolean wW
    Boolean wWFoo
    String? errorError
    String? macroMacroParams
    String? macroMacroSelfRef
    String? macroMacroDefaults
    String? orphanOrphanLabels
    String? numberNumberOverflow
    String? gnuGnuElfExtensions
    Float? floatFloatOverflow
    Float? floatFloatDeNorm
    Float? floatFloatUnderflow
    Float? floatFloatTooLong
    String? userUser
    String? lockLock
    String? hleHle
    String? bndBnd
  }
  command <<<
    nasm \
      ~{errorError} \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-E" false="" eE} \
      ~{true="-a" false="" aA} \
      ~{true="-M" false="" mM} \
      ~{true="-MG" false="" mgMg} \
      ~{if defined(mfMf) then ("-MF " +  '"' + mfMf + '"') else ""} \
      ~{if defined(mdMd) then ("-MD " +  '"' + mdMd + '"') else ""} \
      ~{if defined(mtMt) then ("-MT " +  '"' + mtMt + '"') else ""} \
      ~{if defined(mqMq) then ("-MQ " +  '"' + mqMq + '"') else ""} \
      ~{true="-MP" false="" mpMp} \
      ~{true="-Z" false="" zZ} \
      ~{true="-s" false="" sS} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="-O" false="" oO} \
      ~{true="-P" false="" pP} \
      ~{true="-D" false="" dD} \
      ~{true="-U" false="" uU} \
      ~{true="-X" false="" xX} \
      ~{true="-w" false="" wW} \
      ~{true="-w-foo" false="" wWFoo} \
      ~{macroMacroParams} \
      ~{macroMacroSelfRef} \
      ~{macroMacroDefaults} \
      ~{orphanOrphanLabels} \
      ~{numberNumberOverflow} \
      ~{gnuGnuElfExtensions} \
      ~{floatFloatOverflow} \
      ~{floatFloatDeNorm} \
      ~{floatFloatUnderflow} \
      ~{floatFloatTooLong} \
      ~{userUser} \
      ~{lockLock} \
      ~{hleHle} \
      ~{bndBnd}
  >>>
}