version 1.0

task Dcmp2pgm {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    Boolean pP
    Boolean cC
    Boolean fF
    String? dcmDcmFileIn
    String? bitmapBitmapOut
  }
  command <<<
    dcmp2pgm \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{bitmapBitmapOut}
  >>>
}