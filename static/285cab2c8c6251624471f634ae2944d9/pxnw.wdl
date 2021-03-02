version 1.0

task Pxnw {
  input {
    File? seq_f
    File? out_f
    File? out_a_lnf
    Int? seqtype
    File? matrix
    Int? n_threads
    Boolean? verbose
    Boolean? citation
  }
  command <<<
    pxnw \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(out_a_lnf) then ("--outalnf " +  '"' + out_a_lnf + '"') else ""} \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    out_f: "output score/distance file, STOUT otherwise"
    out_a_lnf: "output sequence file, won't output otherwise"
    seqtype: "sequence type, default=DNA (DNA=0,AA=1)"
    matrix: "scoring matrix, default DNA=EDNAFULL, AA=BLOSUM62"
    n_threads: "number of threads (open mp), default=2"
    verbose: "make the output more verbose, turns off parallel"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
    File out_out_a_lnf = "${in_out_a_lnf}"
  }
}