version 1.0

task TOBIASLog2Table {
  input {
    Boolean logLogFiles
    Boolean outdirOutdir
    Boolean prefixPrefix
  }
  command <<<
    TOBIAS Log2Table \
      ~{true="--logfiles" false="" logLogFiles} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--prefix" false="" prefixPrefix}
  >>>
}