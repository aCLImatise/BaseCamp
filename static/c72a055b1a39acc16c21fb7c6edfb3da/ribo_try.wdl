version 1.0

task RiboTry {
  input {
    Directory? output_directory_default
    File? verbosity
    Int? cores
    String? threads
    Int? memory
  }
  command <<<
    ribo try \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_default: "output directory; default: /riboSeed_sample_results"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    cores: "cores to be used; default: 2"
    threads: "if your cores are hyperthreaded, set number threads to\\nthe number of threads per processer.If unsure, see\\n'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\\nunder 'Thread(s) per core'.: 1"
    memory: "system memory available; default: 8"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_verbosity = "${in_verbosity}"
  }
}