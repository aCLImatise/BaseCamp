version 1.0

task Segway {
  input {
    Float? mem_usage
    Int? split_sequences
    Int? verbosity
    String? cluster_opt
    Boolean? dry_run
  }
  command <<<
    segway \
      ~{if defined(mem_usage) then ("--mem-usage " +  '"' + mem_usage + '"') else ""} \
      ~{if defined(split_sequences) then ("--split-sequences " +  '"' + split_sequences + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cluster_opt) then ("--cluster-opt " +  '"' + cluster_opt + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  parameter_meta {
    mem_usage: "try each float in PROGRESSION as the number of\\ngibibytes of memory to allocate in turn (default\\n2,3,4,6,8,10,12,14,15)"
    split_sequences: "split up sequences that are larger than SIZE bp\\n(default 2000000)"
    verbosity: "show messages with verbosity NUM (default 0)"
    cluster_opt: "specify an option to be passed to the cluster manager"
    dry_run: "write all files, but do not run any executables"
  }
  output {
    File out_stdout = stdout()
  }
}