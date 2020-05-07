version 1.0

task NebulizerPingGALAXY {
  input {
    String countCount
    Int intervalInterval
  }
  command <<<
    nebulizer ping GALAXY \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""}
  >>>
}