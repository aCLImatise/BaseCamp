version 1.0

task RiboTry {
  input {
    String? output_directory_default
    String? verbosity
    String? cores
    String? threads
    String? memory
  }
  command <<<
    ribo try \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn/riboSeed_sample_results"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    cores: "cores to be used; default: 2"
    threads: "if your cores are hyperthreaded, set number threads to the number of threads per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu' under 'Thread(s) per core'.: 1"
    memory: "system memory available; default: 8"
  }
}