version 1.0

task Ruby {
  input {
    Boolean aA
    Boolean cC
    Boolean cCDirectory
    Boolean debugDebug
    Boolean eE
    Boolean eexEex
    Boolean fFPattern
    Boolean iI
    Boolean iIDirectory
    Boolean lL
    Boolean nN
    Boolean pP
    Boolean rRLibrary
    Boolean sS
    Boolean sS
    Boolean tT
    Boolean verboseVerbose
    Boolean wW
    Boolean wW
    Boolean xX
    Boolean copyrightCopyright
    String enableEnable
    String externalExternalEncoding
    String? gemsGems
    String? rubyRubyOpt
  }
  command <<<
    ruby \
      ~{gemsGems} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-Cdirectory" false="" cCDirectory} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-e" false="" eE} \
      ~{true="-Eex" false="" eexEex} \
      ~{true="-Fpattern" false="" fFPattern} \
      ~{true="-i" false="" iI} \
      ~{true="-Idirectory" false="" iIDirectory} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-rlibrary" false="" rRLibrary} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-w" false="" wW} \
      ~{true="-W" false="" wW} \
      ~{true="-x" false="" xX} \
      ~{true="--copyright" false="" copyrightCopyright} \
      ~{if defined(enableEnable) then ("--enable " +  '"' + enableEnable + '"') else ""} \
      ~{if defined(externalExternalEncoding) then ("--external-encoding " +  '"' + externalExternalEncoding + '"') else ""} \
      ~{rubyRubyOpt}
  >>>
}