version 1.0

task Peakaboo {
  input {
    Boolean fF
    Boolean oO
    Boolean eE
    String scanScanBegin
    String scanScanEnd
    String mzMzLow
    String mzMzHigh
  }
  command <<<
    peakaboo \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{if defined(scanScanBegin) then ("--scanBegin " +  '"' + scanScanBegin + '"') else ""} \
      ~{if defined(scanScanEnd) then ("--scanEnd " +  '"' + scanScanEnd + '"') else ""} \
      ~{if defined(mzMzLow) then ("--mzLow " +  '"' + mzMzLow + '"') else ""} \
      ~{if defined(mzMzHigh) then ("--mzHigh " +  '"' + mzMzHigh + '"') else ""}
  >>>
}