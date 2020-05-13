version 1.0

task Map {
  input {
    String fromFrom
    Boolean listList
    Boolean toTo
  }
  command <<<
    map \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="--to" false="" toTo}
  >>>
}