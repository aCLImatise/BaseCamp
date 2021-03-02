version 1.0

task RefinemGenomeStats {
  input {
    Int? cpus
    Boolean? silent
    String scaffold_stats_file
    String output_file
  }
  command <<<
    refinem genome_stats \
      ~{scaffold_stats_file} \
      ~{output_file} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger (default: False)"
    scaffold_stats_file: "file with statistics for each scaffold"
    output_file: "output file with genome statistics"
  }
  output {
    File out_stdout = stdout()
  }
}