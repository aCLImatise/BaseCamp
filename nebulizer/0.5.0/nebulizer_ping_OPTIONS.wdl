version 1.0

task NebulizerPingOPTIONS {
  input {
    String countCount
    Int intervalInterval
  }
  command <<<
    nebulizer ping OPTIONS \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""}
  >>>
}