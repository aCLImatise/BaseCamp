version 1.0

task Humann2Config {
  input {
    Boolean printPrint
    String updateUpdate
  }
  command <<<
    humann2_config \
      ~{true="--print" false="" printPrint} \
      ~{if defined(updateUpdate) then ("--update " +  '"' + updateUpdate + '"') else ""}
  >>>
}