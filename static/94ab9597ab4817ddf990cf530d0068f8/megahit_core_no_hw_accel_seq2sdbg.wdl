version 1.0

task MegahitCoreNoHwAccelSeq2sdbg {
  input {
    Int? host_mem
    Int? km_er_size
    Int? km_er_from
    Int? num_cpu_threads
    String? contig
    String? bubble
    String? add_i_contig
    String? local_contig
    String? input_prefix
    String? output_prefix
    Boolean? need_mercy
    Int? mem_flag
    String s_dbg_builder
    Int seq_two_s_dbg
  }
  command <<<
    megahit_core_no_hw_accel seq2sdbg \
      ~{s_dbg_builder} \
      ~{seq_two_s_dbg} \
      ~{if defined(host_mem) then ("--host_mem " +  '"' + host_mem + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_from) then ("--kmer_from " +  '"' + km_er_from + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(bubble) then ("--bubble " +  '"' + bubble + '"') else ""} \
      ~{if defined(add_i_contig) then ("--addi_contig " +  '"' + add_i_contig + '"') else ""} \
      ~{if defined(local_contig) then ("--local_contig " +  '"' + local_contig + '"') else ""} \
      ~{if defined(input_prefix) then ("--input_prefix " +  '"' + input_prefix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (need_mercy) then "--need_mercy" else ""} \
      ~{if defined(mem_flag) then ("--mem_flag " +  '"' + mem_flag + '"') else ""}
  >>>
  parameter_meta {
    host_mem: "(=0)                memory to be used. No more than 95% of the free memory is recommended. 0 for auto detect."
    km_er_size: "(=0)               kmer size"
    km_er_from: "(=0)               previous k"
    num_cpu_threads: "(=0)         number of CPU threads. At least 2."
    contig: "contigs from previous k"
    bubble: "bubble sequence from previous k"
    add_i_contig: "additional contigs from previous k"
    local_contig: "local contigs from previous k"
    input_prefix: "files input_prefix.edges.* output by count module, can be gzip'ed."
    output_prefix: "output prefix"
    need_mercy: "to add mercy edges. The file input_prefix.cand output by count module should exist."
    mem_flag: "(=1)                memory options. 0: minimize memory usage; 1: automatically use moderate memory; other: use all available mem specified by '--host_mem'"
    s_dbg_builder: ""
    seq_two_s_dbg: ""
  }
  output {
    File out_stdout = stdout()
  }
}