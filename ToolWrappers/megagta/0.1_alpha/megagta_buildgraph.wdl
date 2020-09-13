version 1.0

task MegagtaBuildgraph {
  input {
    Int? km_er_k
    Int? min_km_er_frequency
    Int? host_mem
    Int? gpu_mem
    Int? num_cpu_threads
    Int? num_output_threads
    File? read_lib_file
    File? assist_seq
    String? output_prefix
    Int? mem_flag
    Boolean? need_mercy
    String? o
    String s_dbg_builder
    Int read_two_s_dbg
  }
  command <<<
    megagta buildgraph \
      ~{s_dbg_builder} \
      ~{read_two_s_dbg} \
      ~{if defined(km_er_k) then ("--kmer_k " +  '"' + km_er_k + '"') else ""} \
      ~{if defined(min_km_er_frequency) then ("--min_kmer_frequency " +  '"' + min_km_er_frequency + '"') else ""} \
      ~{if defined(host_mem) then ("--host_mem " +  '"' + host_mem + '"') else ""} \
      ~{if defined(gpu_mem) then ("--gpu_mem " +  '"' + gpu_mem + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(num_output_threads) then ("--num_output_threads " +  '"' + num_output_threads + '"') else ""} \
      ~{if defined(read_lib_file) then ("--read_lib_file " +  '"' + read_lib_file + '"') else ""} \
      ~{if defined(assist_seq) then ("--assist_seq " +  '"' + assist_seq + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(mem_flag) then ("--mem_flag " +  '"' + mem_flag + '"') else ""} \
      ~{if (need_mercy) then "--need_mercy" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    km_er_k: "(=21)                 kmer size"
    min_km_er_frequency: "(=2)      min frequency to output an edge"
    host_mem: "(=0)                Max memory to be used. 90% of the free memory is recommended."
    gpu_mem: "(=0)                 gpu memory to be used. 0 for auto detect."
    num_cpu_threads: "(=0)         number of CPU threads. At least 2."
    num_output_threads: "(=0)      number of threads for output. Must be less than num_cpu_threads"
    read_lib_file: "input fast[aq] file, can be gzip'ed. \\\"-\\\" for stdin."
    assist_seq: "input assisting fast[aq] file (FILE_NAME.info should exist), can be gzip'ed."
    output_prefix: "(=out)         output prefix"
    mem_flag: "(=1)                memory options. 0: minimize memory usage; 1: automatically use moderate memory; other: use all available mem specified by '--host_mem'"
    need_mercy: "to add mercy edges."
    o: ""
    s_dbg_builder: ""
    read_two_s_dbg: ""
  }
  output {
    File out_stdout = stdout()
  }
}