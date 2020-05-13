version 1.0

task Deeplc {
  input {
    String batchBatchNum
    Boolean plotPlotPredictions
    String nNThreads
    String logLogLevel
  }
  command <<<
    deeplc \
      ~{if defined(batchBatchNum) then ("--batch_num " +  '"' + batchBatchNum + '"') else ""} \
      ~{true="--plot_predictions" false="" plotPlotPredictions} \
      ~{if defined(nNThreads) then ("--n_threads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""}
  >>>
}