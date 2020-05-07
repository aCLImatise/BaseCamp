version 1.0

task FaToTab {
  input {
    String typeType
    Boolean keepKeepAccSuffix
    String? inInFilename
    String? outOutFilename
  }
  command <<<
    faToTab \
      ~{inInFilename} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{true="-keepAccSuffix" false="" keepKeepAccSuffix} \
      ~{outOutFilename}
  >>>
}