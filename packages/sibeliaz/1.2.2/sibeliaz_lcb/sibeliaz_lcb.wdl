version 1.0

task Sibeliazlcb {
  input {
    Boolean? no_seq
    Directory? outdir
    File? graph
    Int? abundance
    Int? threads
    Int? block_size
    Int? branch_size
    String? k_value
    Int? integer
  }
  command <<<
    sibeliaz_lcb \
      ~{integer} \
      ~{if (no_seq) then "--noseq" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(abundance) then ("--abundance " +  '"' + abundance + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(branch_size) then ("--branchsize " +  '"' + branch_size + '"') else ""} \
      ~{if defined(k_value) then ("--kvalue " +  '"' + k_value + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0"
  }
  parameter_meta {
    no_seq: "Do not output blocks sequences"
    outdir: "Output dir for blocks sequences"
    graph: "(required)  Binary file containing the graph"
    abundance: "Max abundance of a junction"
    threads: "Number of worker threads"
    block_size: "Minimum block size"
    branch_size: "Maximum branch size"
    k_value: "Value of k"
    integer: ""
  }
  output {
    File out_stdout = stdout()
  }
}