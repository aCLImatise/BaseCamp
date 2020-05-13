version 1.0

task SnpSiftGtfilter {
  input {
    Boolean eE
    Boolean fF
    Boolean gnGn
    Boolean gvGv
    Boolean nN
    Boolean sS
    Boolean errErrMissing
    String formatFormat
  }
  command <<<
    SnpSift gtfilter \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-gn" false="" gnGn} \
      ~{true="-gv" false="" gvGv} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="--errMissing" false="" errErrMissing} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}