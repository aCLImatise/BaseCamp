version 1.0

task SketchyOnlineMonitor {
  input {
    Float intervalInterval
    Boolean terminateTerminate
    Float earlyEarly
    String prefixPrefix
    Boolean logLog
  }
  command <<<
    sketchy online monitor \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{true="--terminate" false="" terminateTerminate} \
      ~{if defined(earlyEarly) then ("--early " +  '"' + earlyEarly + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--log" false="" logLog}
  >>>
}