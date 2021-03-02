version 1.0

task UvaiaSearchU {
  input {
    Int? n_best
    String? reference
  }
  command <<<
    uvaia_search_u \
      ~{if defined(n_best) then ("--nbest " +  '"' + n_best + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/uvaia:1.0.0--hbcae180_0"
  }
  parameter_meta {
    n_best: "number of best reference sequences per query to show (default=4)"
    reference: "reference sequences"
  }
  output {
    File out_stdout = stdout()
  }
}