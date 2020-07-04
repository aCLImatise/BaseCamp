version 1.0

task Targqc {
  input {
    String? down_sample_pairs_num
    String? down_sample_fraction
    String? threads
    Boolean? reuse
    String? scheduler
    String? queue
    String? resources
    Boolean? re_annotate
  }
  command <<<
    targqc \
      ~{if defined(down_sample_pairs_num) then ("--downsample-pairs-num " +  '"' + down_sample_pairs_num + '"') else ""} \
      ~{if defined(down_sample_fraction) then ("--downsample-fraction " +  '"' + down_sample_fraction + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--reuse" false="" reuse} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{true="--reannotate" false="" re_annotate}
  >>>
  parameter_meta {
    down_sample_pairs_num: "If input is FastQ, select N random read pairs from each input set (instead of default fraction 0.05)."
    down_sample_fraction: "If input is FastQ, select K% random read pairs from each input set. Default is 0.05%. To turn off (align all reads), set --downsample 1"
    threads: "Number of threads"
    reuse: "reuse intermediate non-empty files in the work dir from previous run"
    scheduler: "Scheduler to use for ipython parallel"
    queue: "Scheduler queue to run jobs on, for ipython parallel"
    resources: "Cluster specific resources specifications. Can be specified multiple times. Supports SGE, Torque, LSF and SLURM parameters."
    re_annotate: "Re-annotate BED file with gene names, even if it's 4 columns or more"
  }
}