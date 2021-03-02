version 1.0

task TerminusCollapse {
  input {
    Float? consensus_thresh
    String? dirs
    String? out
    Int? threads
  }
  command <<<
    terminus collapse \
      ~{if defined(consensus_thresh) then ("--consensus-thresh " +  '"' + consensus_thresh + '"') else ""} \
      ~{if defined(dirs) then ("--dirs " +  '"' + dirs + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    consensus_thresh: "threshold for edge consensus [default: 0.5]"
    dirs: "...                         direcotories to read the group files from"
    out: "prefix where output would be written"
    threads: "number of threads to use when writing down the collapsed quantifications [default: 8]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}