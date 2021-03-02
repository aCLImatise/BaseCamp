version 1.0

task Uvaia {
  input {
    Int? n_best
    Int? nmax
    Int? trim
    Boolean? reference
    Boolean? output_reference_sequences
    Int? n_threads
  }
  command <<<
    uvaia \
      ~{if defined(n_best) then ("--nbest " +  '"' + n_best + '"') else ""} \
      ~{if defined(nmax) then ("--nmax " +  '"' + nmax + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (output_reference_sequences) then "--output" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/uvaia:1.0.0--hbcae180_0"
  }
  parameter_meta {
    n_best: "number of best reference sequences per query to show (default=8)"
    nmax: "max number of best reference sequences when several optimal (default=2 x nbest)"
    trim: "number of sites to trim from both ends (default=0, suggested for sarscov2=230) -- MAY CONTAIN BUGS"
    reference: "=[ref.fa(.gz)]    *aligned* reference sequences"
    output_reference_sequences: "=[chosen_refs.fa.gz] output reference sequences"
    n_threads: "suggested number of threads (default is to let system decide; I may not honour your suggestion btw)"
  }
  output {
    File out_stdout = stdout()
  }
}