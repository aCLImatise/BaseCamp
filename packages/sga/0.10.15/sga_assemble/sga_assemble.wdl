version 1.0

task SgaAssemble {
  input {
    Boolean? verbose
    String? out_prefix
    Int? min_overlap
    Boolean? transitive_reduction
    Int? max_edges
    Int? bubble
    Int? max_divergence
    Int? max_gap_divergence
    Int? max_in_del
    Int? cut_terminal
    Int? min_branch_length
    String? resolve_small
  }
  command <<<
    sga assemble \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (transitive_reduction) then "--transitive-reduction" else ""} \
      ~{if defined(max_edges) then ("--max-edges " +  '"' + max_edges + '"') else ""} \
      ~{if defined(bubble) then ("--bubble " +  '"' + bubble + '"') else ""} \
      ~{if defined(max_divergence) then ("--max-divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(max_gap_divergence) then ("--max-gap-divergence " +  '"' + max_gap_divergence + '"') else ""} \
      ~{if defined(max_in_del) then ("--max-indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(cut_terminal) then ("--cut-terminal " +  '"' + cut_terminal + '"') else ""} \
      ~{if defined(min_branch_length) then ("--min-branch-length " +  '"' + min_branch_length + '"') else ""} \
      ~{if defined(resolve_small) then ("--resolve-small " +  '"' + resolve_small + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    out_prefix: "use NAME as the prefix of the output files (output files will be NAME-contigs.fa, etc)"
    min_overlap: "only use overlaps of at least LEN. This can be used to filter\\nthe overlap set so that the overlap step only needs to be run once."
    transitive_reduction: "remove transitive edges from the graph. Off by default."
    max_edges: "limit each vertex to a maximum of N edges. For highly repetitive regions\\nthis helps save memory by culling excessive edges around unresolvable repeats (default: 128)"
    bubble: "perform N bubble removal steps (default: 3)"
    max_divergence: "only remove variation if the divergence between sequences is less than F (default: 0.05)"
    max_gap_divergence: "only remove variation if the divergence between sequences when only counting indels is less than F (default: 0.01)\\nSetting this to 0.0 will suppress removing indel variation"
    max_in_del: "do not remove variation that is an indel of length greater than D (default: 20)"
    cut_terminal: "cut off terminal branches in N rounds (default: 10)"
    min_branch_length: "remove terminal branches only if they are less than LEN bases in length (default: 150)"
    resolve_small: "resolve small repeats using spanning overlaps when the difference between the shortest\\nand longest overlap is greater than LEN (default: not performed)"
  }
  output {
    File out_stdout = stdout()
  }
}