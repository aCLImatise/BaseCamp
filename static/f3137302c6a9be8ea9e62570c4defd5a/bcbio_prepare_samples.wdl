version 1.0

task BcbioPrepareSamples.py {
  input {
    String? csv
    String? out
    Boolean? force_single
    Boolean? separators
    Boolean? remove_source
    String? num_cores
    String? cores_per_job
    String? memory_per_job
    String? timeout
    String? retries
    String? scheduler
    String? resources
    String? queue
    String? tag
    String? parallel_type
  }
  command <<<
    bcbio_prepare_samples.py \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--force-single" false="" force_single} \
      ~{true="--separators" false="" separators} \
      ~{true="--remove-source" false="" remove_source} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(cores_per_job) then ("--cores-per-job " +  '"' + cores_per_job + '"') else ""} \
      ~{if defined(memory_per_job) then ("--memory-per-job " +  '"' + memory_per_job + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(parallel_type) then ("--paralleltype " +  '"' + parallel_type + '"') else ""}
  >>>
  parameter_meta {
    csv: "csv file with metadata"
    out: "output dir"
    force_single: "Treat all files as single reads"
    separators: "[SEPARATORS [SEPARATORS ...]] Space separated list of separators that indicates paired files."
    remove_source: "Remove original files."
    num_cores: "Number of concurrent jobs to process."
    cores_per_job: "Number of cores to use."
    memory_per_job: "Memory in GB to reserve per job."
    timeout: "Time to wait before giving up starting."
    retries: "Number of retries of failed tasks during distributed processing. Default 0 (no retries)"
    scheduler: "Type of scheduler to use."
    resources: "Extra scheduler resource flags."
    queue: "Queue to submit jobs to."
    tag: "Tag name to label jobs on the cluster"
    parallel_type: "Run with iptyhon"
  }
}