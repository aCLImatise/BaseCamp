version 1.0

task IvaQcMakeDb {
  input {
    File addAddToRef
    Boolean skipSkipViruses
    Int threadsThreads
    Int minimizerMinimizerLen
    Int maxMaxDbSize
    Boolean verboseVerbose
    Directory? directoryDirectoryName
  }
  command <<<
    iva_qc_make_db \
      ~{directoryDirectoryName} \
      ~{if defined(addAddToRef) then ("--add_to_ref " +  '"' + addAddToRef + '"') else ""} \
      ~{true="--skip_viruses" false="" skipSkipViruses} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(minimizerMinimizerLen) then ("--minimizer_len " +  '"' + minimizerMinimizerLen + '"') else ""} \
      ~{if defined(maxMaxDbSize) then ("--max_db_size " +  '"' + maxMaxDbSize + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}