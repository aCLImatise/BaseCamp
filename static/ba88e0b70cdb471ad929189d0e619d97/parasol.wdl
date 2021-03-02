version 1.0

task Parasol {
  input {
    String? in
    String? out
    Boolean? wait
    File? err
    Int? verbose
    Boolean? print_id
    String? dir
    File? results
    Int? cpu
    Int? ram
    String? host
    String or
  }
  command <<<
    parasol \
      ~{or} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (wait) then "-wait" else ""} \
      ~{if defined(err) then ("-err " +  '"' + err + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (print_id) then "-printId" else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(results) then ("-results " +  '"' + results + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(ram) then ("-ram " +  '"' + ram + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "- Where to get stdin, default /dev/null"
    out: "- Where to put stdout, default /dev/null"
    wait: "- If set wait for job to finish to return and return with job status code"
    err: "- set stderr to out file - only works with wait flag"
    verbose: "- set verbosity level, default level is 1"
    print_id: "- prints jobId to stdout"
    dir: "- set output results dir, default is current dir"
    results: "fully qualified path to the results file,\\nor `results' in the current directory if not specified."
    cpu: "Number of CPUs used by the jobs, default 1."
    ram: "Number of bytes of RAM used by the jobs.\\nDefault is RAM on node divided by number of cpus on node.\\nShorthand expressions allow t,g,m,k for tera, giga, mega, kilo.\\ne.g. 4g = 4 Gigabytes."
    host: "- connect to a paraHub process on a remote host instead\\nlocalhost."
    or: "parasol add machine machineFullHostName cpus ramSizeMB localTempDir localDir localSizeMB switchName"
  }
  output {
    File out_stdout = stdout()
    File out_err = "${in_err}"
  }
}