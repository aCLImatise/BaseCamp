version 1.0

task GalahClustervalidate {
  input {
    Int? ani
    File? cluster_file
    Int? min_aligned_fraction
  }
  command <<<
    galah cluster_validate \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""} \
      ~{if defined(cluster_file) then ("--cluster-file " +  '"' + cluster_file + '"') else ""} \
      ~{if defined(min_aligned_fraction) then ("--min-aligned-fraction " +  '"' + min_aligned_fraction + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galah:0.3.0--h516909a_0"
  }
  parameter_meta {
    ani: "ANI to validate against [default: 99]"
    cluster_file: "Output of 'cluster' subcommand"
    min_aligned_fraction: "Min aligned fraction of two genomes for clustering [default: 50]"
  }
  output {
    File out_stdout = stdout()
  }
}