version 1.0

task Unitigcaller {
  input {
    Boolean? build_dbg_call
    Boolean? query
    Boolean? simple
    File? refs
    File? reads
    String? graph
    File? colours
    File? unit_igs
    Boolean? py_seer
    Boolean? r_tab
    String? out
    Int? km_er
    Boolean? write_graph
    Boolean? no_save_idx
    Int? threads
  }
  command <<<
    unitig_caller \
      ~{if (build_dbg_call) then "--call" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if defined(refs) then ("--refs " +  '"' + refs + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(colours) then ("--colours " +  '"' + colours + '"') else ""} \
      ~{if defined(unit_igs) then ("--unitigs " +  '"' + unit_igs + '"') else ""} \
      ~{if (py_seer) then "--pyseer" else ""} \
      ~{if (r_tab) then "--rtab" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (write_graph) then "--write-graph" else ""} \
      ~{if (no_save_idx) then "--no-save-idx" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unitig-caller:1.2.0--py38hfcc51a0_0"
  }
  parameter_meta {
    build_dbg_call: "Build a DBG and call colours of unitigs within"
    query: "Query unitig colours in reference genomes/DBG"
    simple: "Use FM-index to make calls"
    refs: "Ref file to used to build DBG or use with --simple"
    reads: "Read file to used to build DBG"
    graph: "Existing graph in GFA format"
    colours: "Existing bifrost colours file in .bfg_colors format"
    unit_igs: "Text or fasta file of unitigs to query (--query or"
    py_seer: "Output pyseer format"
    r_tab: "Output rtab format"
    out: "Prefix for output [default = 'unitig_caller']"
    km_er: "K-mer size for graph building/querying [default = 31]"
    write_graph: "Output DBG built with unitig-caller"
    no_save_idx: "Do not save FM-indexes for reuse"
    threads: "Number of threads to use [default = 1]"
  }
  output {
    File out_stdout = stdout()
  }
}