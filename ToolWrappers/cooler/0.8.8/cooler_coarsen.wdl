version 1.0

task CoolerCoarsen {
  input {
    Int? factor
    Int? nproc
    Int? chunksize
    String? field
    File? out
    String cool_path
  }
  command <<<
    cooler coarsen \
      ~{cool_path} \
      ~{if defined(factor) then ("--factor " +  '"' + factor + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    factor: "Gridding factor. The contact matrix is\\ncoarsegrained by grouping each chromosomal contact\\nblock into k-by-k element tiles  [default: 2]"
    nproc: "Number of processes to use for batch processing\\nchunks of pixels [default: 1, i.e. no process pool]"
    chunksize: "Number of pixels allocated to each process\\n[default: 10000000]"
    field: "Specify the names of value columns to merge as\\n'<name>'. Repeat the `--field` option for each one.\\nUse '<name>,dtype=<dtype>' to specify the dtype.\\nInclude ',agg=<agg>' to specify an aggregation\\nfunction different from 'sum'."
    out: "Output file or URI  [required]"
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}