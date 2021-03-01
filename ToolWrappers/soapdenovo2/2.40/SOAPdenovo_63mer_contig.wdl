version 1.0

task SOAPdenovo63merContig {
  input {
    File? prefix_input_graph
    Boolean? optional_resolve_repeats
    Int? mergelevelmin_max_strength
    Int? edgecovcutoff_edges_shorter
    Int? arcweight_two_edges
    Int? max_k_used
    File? readsinfofilethe_file_contains
    Int? number_of_cpu
    Boolean? optional_merge_bubble
    String contig
  }
  command <<<
    SOAPdenovo_63mer contig \
      ~{contig} \
      ~{if defined(prefix_input_graph) then ("-g " +  '"' + prefix_input_graph + '"') else ""} \
      ~{if (optional_resolve_repeats) then "-R" else ""} \
      ~{if defined(mergelevelmin_max_strength) then ("-M " +  '"' + mergelevelmin_max_strength + '"') else ""} \
      ~{if defined(edgecovcutoff_edges_shorter) then ("-D " +  '"' + edgecovcutoff_edges_shorter + '"') else ""} \
      ~{if defined(arcweight_two_edges) then ("-e " +  '"' + arcweight_two_edges + '"') else ""} \
      ~{if defined(max_k_used) then ("-m " +  '"' + max_k_used + '"') else ""} \
      ~{if defined(readsinfofilethe_file_contains) then ("-s " +  '"' + readsinfofilethe_file_contains + '"') else ""} \
      ~{if defined(number_of_cpu) then ("-p " +  '"' + number_of_cpu + '"') else ""} \
      ~{if (optional_merge_bubble) then "-E" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_input_graph: "inputGraph: prefix of input graph file names"
    optional_resolve_repeats: "(optional)    resolve repeats using information generated in pregraph step, works only if -R is set in pregraph step too, [NO]"
    mergelevelmin_max_strength: "mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
    edgecovcutoff_edges_shorter: "EdgeCovCutoff: edges shorter than (2*K+1) with coverage no larger than EdgeCovCutoff will be deleted, [1]"
    arcweight_two_edges: "arcWeight: two edges, between which the arc's weight is larger than arcWeight, will be linerized, [0]"
    max_k_used: "max k when using multi-kmer, and the parameters below are used along with multi-kmer, [NO]"
    readsinfofilethe_file_contains: "readsInfoFile:The file contains information of solexa reads(It's necessary when using multi-kmer)"
    number_of_cpu: "number of cpu, [8]"
    optional_merge_bubble: "(optional)    merge clean bubble before iterate, works only if -M is set when using multi-kmer, [NO]"
    contig: "contig -g InputGraph [-R] [-M mergeLevel -D EdgeCovCutoff] [-s readsInfoFile -m maxkmer -p n_cpu -r]"
  }
  output {
    File out_stdout = stdout()
  }
}