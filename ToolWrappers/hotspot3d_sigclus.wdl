version 1.0

task Hotspot3dSigclus {
  input {
    Boolean? prep_dir
    Boolean? pairwise
    Boolean? clusters
    File? output_file_prefix
    Boolean? simulations
    String usage
  }
  command <<<
    hotspot3d sigclus \
      ~{usage} \
      ~{if (prep_dir) then "--prep-dir" else ""} \
      ~{if (pairwise) then "--pairwise" else ""} \
      ~{if (clusters) then "--clusters" else ""} \
      ~{if (output_file_prefix) then "--output" else ""} \
      ~{if (simulations) then "--simulations" else ""}
  >>>
  parameter_meta {
    prep_dir: "Preprocessing directory"
    pairwise: "Pairwise file (pancan19.pairwise)"
    clusters: "Cluster file (pancan19.intra.20..05.10.clusters)"
    output_file_prefix: "Output file prefix (pancan19.intra.20..05.10)"
    simulations: "Number of simulations, default = 1000000"
    usage: "Usage: hotspot3d sigclus [options]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}