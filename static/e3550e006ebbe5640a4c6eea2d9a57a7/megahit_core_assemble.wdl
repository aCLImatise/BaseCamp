version 1.0

task MegahitCoreAssemble {
  input {
    String? s_dbg_name
    String? output_prefix
    Int? num_cpu_threads
    Int? max_tip_len
    Int? min_standalone
    Int? bubble_level
    Int? merge_len
    Int? merge_similar
    Int? prune_level
    Float? disconnect_ratio
    Float? low_local_ratio
    Int? cleaning_rounds
    Int? min_depth
    Boolean? is_final_round
    Boolean? output_standalone
    Boolean? careful_bubble
    String assemble
  }
  command <<<
    megahit_core assemble \
      ~{assemble} \
      ~{if defined(s_dbg_name) then ("--sdbg_name " +  '"' + s_dbg_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(max_tip_len) then ("--max_tip_len " +  '"' + max_tip_len + '"') else ""} \
      ~{if defined(min_standalone) then ("--min_standalone " +  '"' + min_standalone + '"') else ""} \
      ~{if defined(bubble_level) then ("--bubble_level " +  '"' + bubble_level + '"') else ""} \
      ~{if defined(merge_len) then ("--merge_len " +  '"' + merge_len + '"') else ""} \
      ~{if defined(merge_similar) then ("--merge_similar " +  '"' + merge_similar + '"') else ""} \
      ~{if defined(prune_level) then ("--prune_level " +  '"' + prune_level + '"') else ""} \
      ~{if defined(disconnect_ratio) then ("--disconnect_ratio " +  '"' + disconnect_ratio + '"') else ""} \
      ~{if defined(low_local_ratio) then ("--low_local_ratio " +  '"' + low_local_ratio + '"') else ""} \
      ~{if defined(cleaning_rounds) then ("--cleaning_rounds " +  '"' + cleaning_rounds + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if (is_final_round) then "--is_final_round" else ""} \
      ~{if (output_standalone) then "--output_standalone" else ""} \
      ~{if (careful_bubble) then "--careful_bubble" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s_dbg_name: "succinct de Bruijn graph name"
    output_prefix: "(=out)         output prefix"
    num_cpu_threads: "(=0)         number of cpu threads"
    max_tip_len: "(=-1)            max length for tips to be removed. -1 for 2k"
    min_standalone: "(=200)        min length of a standalone contig to output to final.contigs.fa"
    bubble_level: "(=2)            bubbles level 0-3"
    merge_len: "(=20)              merge complex bubbles of length <= merge_len * k"
    merge_similar: "(=0.98)        min similarity of complex bubble merging"
    prune_level: "(=2)             strength of low local depth contig pruning (0-3)"
    disconnect_ratio: "(=0.1)      ratio threshold for disconnecting contigs"
    low_local_ratio: "(=0.2)       ratio to define low depth contigs"
    cleaning_rounds: "(=5)         number of rounds of graphs cleaning"
    min_depth: "(=-1)              if prune_level >= 2, permanently remove low local coverage unitigs under this threshold"
    is_final_round: "this is the last iteration"
    output_standalone: "output standalone contigs to *.final.contigs.fa"
    careful_bubble: "remove bubble carefully"
    assemble: ""
  }
  output {
    File out_stdout = stdout()
  }
}