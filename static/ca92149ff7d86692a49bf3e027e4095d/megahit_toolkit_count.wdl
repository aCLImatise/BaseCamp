version 1.0

task MegahitToolkitCount {
  input {
    Int? km_er_k
    Int? min_km_er_frequency
    Int? host_mem
    Int? num_cpu_threads
    File? read_lib_file
    String? output_prefix
    Int? mem_flag
    String? o
    File? input_file
    String s_dbg_builder
    String count
  }
  command <<<
    megahit_toolkit count \
      ~{s_dbg_builder} \
      ~{count} \
      ~{if defined(km_er_k) then ("--kmer_k " +  '"' + km_er_k + '"') else ""} \
      ~{if defined(min_km_er_frequency) then ("--min_kmer_frequency " +  '"' + min_km_er_frequency + '"') else ""} \
      ~{if defined(host_mem) then ("--host_mem " +  '"' + host_mem + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(read_lib_file) then ("--read_lib_file " +  '"' + read_lib_file + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(mem_flag) then ("--mem_flag " +  '"' + mem_flag + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""}
  >>>
  parameter_meta {
    km_er_k: "(=21)                 kmer size"
    min_km_er_frequency: "(=2)      min frequency to output an edge"
    host_mem: "(=0)                Max memory to be used. 90% of the free memory is recommended."
    num_cpu_threads: "(=0)         number of CPU threads. At least 2."
    read_lib_file: "read library configuration file."
    output_prefix: "(=out)         output prefix"
    mem_flag: "(=1)                memory options. 0: minimize memory usage; 1: automatically use moderate memory; other: use all available mem specified by '--host_mem'"
    o: ""
    input_file: ""
    s_dbg_builder: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}