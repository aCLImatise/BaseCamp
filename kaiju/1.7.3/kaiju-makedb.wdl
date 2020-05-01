version 1.0

task KaijuMakedb {
  input {
    String tT
    Boolean noNoDownload
    Boolean indexIndexOnly
  }
  command <<<
    kaiju-makedb \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--no-download" false="" noNoDownload} \
      ~{true="--index-only" false="" indexIndexOnly}
  >>>
}