version 1.0

task GalahClusterValidate {
  input {
    String? ani
    String? cluster_file
    String? threads
  }
  command <<<
    galah cluster-validate \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""} \
      ~{if defined(cluster_file) then ("--cluster-file " +  '"' + cluster_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    ani: "ANI to validate against [default: 99]"
    cluster_file: "Output of 'cluster' subcommand"
    threads: "[default: 1]"
  }
}