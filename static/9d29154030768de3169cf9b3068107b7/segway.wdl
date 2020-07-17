version 1.0

task Segway {
  input {
    String? mem_usage
    Int? split_sequences
    String? verbosity
    String? cluster_opt
    Boolean? dry_run
  }
  command <<<
    segway \
      ~{if defined(mem_usage) then ("--mem-usage " +  '"' + mem_usage + '"') else ""} \
      ~{if defined(split_sequences) then ("--split-sequences " +  '"' + split_sequences + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cluster_opt) then ("--cluster-opt " +  '"' + cluster_opt + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    mem_usage: "try each float in PROGRESSION as the number of gibibytes of memory to allocate in turn (default 2,3,4,6,8,10,12,14,15)"
    split_sequences: "split up sequences that are larger than SIZE bp (default 2000000)"
    verbosity: "show messages with verbosity NUM (default 0)"
    cluster_opt: "specify an option to be passed to the cluster manager"
    dry_run: "write all files, but do not run any executables"
  }
}