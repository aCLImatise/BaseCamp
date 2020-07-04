version 1.0

task ChicAggregateStatistic {
  input {
    Array[Int] interaction_file
    Array[String] target_file
    Boolean? batch_mode
    String? threads
  }
  command <<<
    chicAggregateStatistic \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(target_file) then ("--targetFile " +  '"' + target_file + '"') else ""} \
      ~{true="--batchMode" false="" batch_mode} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for aggregation of the statistics."
    target_file: "path to the target files which contains the target regions to prepare data for differential analysis."
    batch_mode: "turns on batch mode. The files provided by --interactionFile and/or --targetFile contain a list of the files to be processed."
    threads: "Number of threads (uses the python multiprocessing module)."
  }
}