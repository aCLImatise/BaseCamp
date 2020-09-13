version 1.0

task TaxmapperMap {
  input {
    Int? maximum_read_length
    File? forward
    File? reverse
    File? out
    String? combine
    Int? threads
  }
  command <<<
    taxmapper map \
      ~{if defined(maximum_read_length) then ("-m " +  '"' + maximum_read_length + '"') else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(combine) then ("--combine " +  '"' + combine + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    maximum_read_length: "Maximum read length"
    forward: "Forward read aln file"
    reverse: "Reverse read aln file [optional]"
    out: "Output file [default: taxa.tsv]"
    combine: "How to combine forward and reverse hits, for\\n\\\"concordant\\\" forward and reverse have to map to the\\nsame taxon, for \\\"best\\\" the best hit from forward and\\nreverse is returned [default: best]"
    threads: "Number of threads, used to map forward and reverse\\nreads in parallel [default: 2]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}