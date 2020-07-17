version 1.0

task SentieonBwaFastmap {
  input {
    Int? min_smem_length
    Int? max_interval_size
    Int? min_smem_interval
    Int? max_mem_length
    Int? stop_mem_longer
    String bwa
    String fast_map
    String idx_base
    String in_dot_fq
  }
  command <<<
    sentieon-bwa fastmap \
      ~{bwa} \
      ~{fast_map} \
      ~{idx_base} \
      ~{in_dot_fq} \
      ~{if defined(min_smem_length) then ("-l " +  '"' + min_smem_length + '"') else ""} \
      ~{if defined(max_interval_size) then ("-w " +  '"' + max_interval_size + '"') else ""} \
      ~{if defined(min_smem_interval) then ("-i " +  '"' + min_smem_interval + '"') else ""} \
      ~{if defined(max_mem_length) then ("-L " +  '"' + max_mem_length + '"') else ""} \
      ~{if defined(stop_mem_longer) then ("-I " +  '"' + stop_mem_longer + '"') else ""}
  >>>
  parameter_meta {
    min_smem_length: "min SMEM length to output [17]"
    max_interval_size: "max interval size to find coordiantes [20]"
    min_smem_interval: "min SMEM interval size [1]"
    max_mem_length: "max MEM length [2147483647]"
    stop_mem_longer: "stop if MEM is longer than -l with a size less than INT [0]"
    bwa: ""
    fast_map: ""
    idx_base: ""
    in_dot_fq: ""
  }
}