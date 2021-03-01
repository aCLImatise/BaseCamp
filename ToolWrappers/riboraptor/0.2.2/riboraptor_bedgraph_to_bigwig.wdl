version 1.0

task RiboraptorBedgraphtobigwig {
  input {
    File? bed_graph
    File? sizes
    File? save_to
  }
  command <<<
    riboraptor bedgraph_to_bigwig \
      ~{if defined(bed_graph) then ("--bedgraph " +  '"' + bed_graph + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_graph: "Path to bedgraph file (optional)"
    sizes: "Path to genome chrom.sizes file  [required]"
    save_to: "Path to write bigwig output  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}