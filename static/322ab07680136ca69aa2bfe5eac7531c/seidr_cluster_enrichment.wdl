version 1.0

task SeidrClusterenrichment {
  input {
    Boolean? arg_first_clustergene_mapping
    Boolean? arg_clustergene_mapping_bepositional
    Boolean? arg_output_delimiter
    Boolean? arg_seidrcompareclustdefalphaadjusted_pvalue
    Boolean? arg_minimum_members
    Boolean? arg_maximum_members
    File? force_overwrite_output
    File? o
    String exists
  }
  command <<<
    seidr cluster_enrichment \
      ~{exists} \
      ~{if (arg_first_clustergene_mapping) then "-1" else ""} \
      ~{if (arg_clustergene_mapping_bepositional) then "-2" else ""} \
      ~{if (arg_output_delimiter) then "-d" else ""} \
      ~{if (arg_seidrcompareclustdefalphaadjusted_pvalue) then "-a" else ""} \
      ~{if (arg_minimum_members) then "-m" else ""} \
      ~{if (arg_maximum_members) then "-M" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_first_clustergene_mapping: "[ --first ] arg                    First cluster->gene mapping"
    arg_clustergene_mapping_bepositional: "[ --second ] arg                   Another cluster->gene mapping [can be\\npositional]"
    arg_output_delimiter: "[ --delim ] arg (=,)               Output delimiter"
    arg_seidrcompareclustdefalphaadjusted_pvalue: "[ --alpha ] arg (=SEIDR_COMPARE_CLUST_DEF_ALPHA)\\nAdjusted p-value cutoff"
    arg_minimum_members: "[ --min-members ] arg (=20)        Minimum members of a cluster"
    arg_maximum_members: "[ --max-members ] arg (=200)       Maximum members of a cluster"
    force_overwrite_output: "[ --force ]                        Force overwrite output file if it"
    o: "[ --outfile ] arg (=-)             Output file name ['-' for stdout]"
    exists: "-h [ --help ]                         Show this help message"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}