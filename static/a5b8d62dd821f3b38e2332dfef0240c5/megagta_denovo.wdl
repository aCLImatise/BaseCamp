version 1.0

task MegagtaDenovo {
  input {
    String? s_dbg_name
    String? output_prefix
    Int? num_cpu_threads
    Int? max_tip_len
    Boolean? no_bubble
    Int? min_standalone
    Int? min_contig
    String de_novo
  }
  command <<<
    megagta denovo \
      ~{de_novo} \
      ~{if defined(s_dbg_name) then ("--sdbg_name " +  '"' + s_dbg_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(max_tip_len) then ("--max_tip_len " +  '"' + max_tip_len + '"') else ""} \
      ~{if (no_bubble) then "--no_bubble" else ""} \
      ~{if defined(min_standalone) then ("--min_standalone " +  '"' + min_standalone + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s_dbg_name: "succinct de Bruijn graph name"
    output_prefix: "(=out)         output prefix"
    num_cpu_threads: "(=0)         number of cpu threads"
    max_tip_len: "(=-1)            max length for tips to be removed. -1 for 2k"
    no_bubble: "do not remove bubbles"
    min_standalone: "(=400)        min length of a standalone contig to output to final.contigs.fa"
    min_contig: "(=0)              min length of contig to output"
    de_novo: ""
  }
  output {
    File out_stdout = stdout()
  }
}