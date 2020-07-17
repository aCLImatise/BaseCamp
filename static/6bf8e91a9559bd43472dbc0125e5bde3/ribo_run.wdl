version 1.0

task RiboRun {
  input {
    String? threads
    String? additional_libs
    Boolean? serialize
    String? r
    String? c
  }
  command <<<
    ribo run \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(additional_libs) then ("--additional_libs " +  '"' + additional_libs + '"') else ""} \
      ~{true="--serialize" false="" serialize} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    threads: "if your cores are hyperthreaded, set number threads to the number of threads per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu' under 'Thread(s) per core'.: 1"
    additional_libs: "include these libraries in final assembly in addition to the reads supplied as -F and -R. They must be supplied according to SPAdes arg naming scheme. Use at own risk.default: None"
    serialize: "if --serialize, runs seeding and assembly without multiprocessing. We recommend this for machines with less than 8GB RAM: False"
    r: ""
    c: ""
  }
}