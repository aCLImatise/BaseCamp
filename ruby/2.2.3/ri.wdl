version 1.0

task Ri {
  input {
    Boolean iI
    Boolean aA
    Boolean lL
    Boolean tT
    String widthWidth
    Boolean serverServer
    String formatFormat
    String dumpDump
    String? namesNames
  }
  command <<<
    ri \
      ~{namesNames} \
      ~{true="-i" false="" iI} \
      ~{true="-a" false="" aA} \
      ~{true="-l" false="" lL} \
      ~{true="-T" false="" tT} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{true="--server" false="" serverServer} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""}
  >>>
}