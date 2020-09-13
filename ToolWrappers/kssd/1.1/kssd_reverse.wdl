version 1.0

task KssdReverse {
  input {
    Boolean? by_reads
    File? s_huf_file
    File? outdir
    Int? threads
    String? option_dot_dot_dot
    String co_dir
  }
  command <<<
    kssd reverse \
      ~{option_dot_dot_dot} \
      ~{co_dir} \
      ~{if (by_reads) then "--byreads" else ""} \
      ~{if defined(s_huf_file) then ("--shufFile " +  '"' + s_huf_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    by_reads: "recover k-mer from sketched reads ."
    s_huf_file: "provide .shuf file."
    outdir: "path for recovered k-mer files."
    threads: "threads num."
    option_dot_dot_dot: ""
    co_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}