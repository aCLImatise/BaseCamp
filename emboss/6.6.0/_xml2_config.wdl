version 1.0

task _xml2Config {
  input {
    String prefixPrefix
    String execExecPrefix
    Boolean libsLibs
    Boolean cflagsCflags
    Boolean modulesModules
    String? xml2Xml2Config
    String? optionOption
  }
  command <<<
    _xml2-config \
      ~{xml2Xml2Config} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(execExecPrefix) then ("--exec-prefix " +  '"' + execExecPrefix + '"') else ""} \
      ~{true="--libs" false="" libsLibs} \
      ~{true="--cflags" false="" cflagsCflags} \
      ~{true="--modules" false="" modulesModules} \
      ~{optionOption}
  >>>
}